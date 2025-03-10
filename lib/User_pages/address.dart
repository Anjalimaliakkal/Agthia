// import 'package:agthia/User_pages/cart_provider.dart';
// import 'package:agthia/User_pages/order_confirmation.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// // import 'package:agthia/provider/cartprovider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// //import 'package:agthia/User_pages/confirmationpage.dart';

// class AddressFormPage extends StatefulWidget {
//   @override
//   _AddressFormPageState createState() => _AddressFormPageState();
// }

// class _AddressFormPageState extends State<AddressFormPage> {
//   final _addressController = TextEditingController();
//   final _nameController = TextEditingController();
//   final _phoneController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Enter Your Address')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: InputDecoration(labelText: 'Name'),
//             ),
//             TextField(
//               controller: _phoneController,
//               decoration: InputDecoration(labelText: 'Phone Number'),
//             ),
//             TextField(
//               controller: _addressController,
//               decoration: InputDecoration(labelText: 'Address'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () async {
//                 // Get the user's details and cart items
//                 String name = _nameController.text;
//                 String phone = _phoneController.text;
//                 String address = _addressController.text;
//                 var cartItems = Provider.of<CartProvider>(context, listen: false).cartItems;
//                 double totalAmount = Provider.of<CartProvider>(context, listen: false).totalAmount;

//                 // Get the current user ID from Firebase Authentication
//                 User? user = FirebaseAuth.instance.currentUser;
//                 String userId = user?.uid ?? '';

//                 // Create an order object with status "Pending"
//                 var order = {
//                   'userId': userId, // Add user ID
//                   'name': name,
//                   'phone': phone,
//                   'address': address,
//                   'cartItems': cartItems,
//                   'totalAmount': totalAmount,
//                   'status': 'Pending', // Initial status is "Pending"
//                   'timestamp': FieldValue.serverTimestamp(),
//                 };

//                 // Save the order to Firestore
//                 try {
//                   DocumentReference orderRef = await FirebaseFirestore.instance.collection('orders').add(order);

//                   // After placing the order, navigate to confirmation page
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (_) => ConfirmationPage(orderId: orderRef.id)),
//                   );

//                   // Clear the cart
//                   Provider.of<CartProvider>(context, listen: false).clearCart();
//                 } catch (e) {
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error placing order.')));
//                 }
//               },
//               child: Text('Place Order'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:agthia/User_pages/cart_provider.dart';
import 'package:agthia/Restaurant_pages/order_confirmation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddressFormPage extends StatefulWidget {
  @override
  _AddressFormPageState createState() => _AddressFormPageState();
}

class _AddressFormPageState extends State<AddressFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _addressController = TextEditingController();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _addressController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  Future<void> _placeOrder() async {
    if (!_formKey.currentState!.validate()) return;

    String name = _nameController.text.trim();
    String phone = _phoneController.text.trim();
    String address = _addressController.text.trim();
    var cartItems = Provider.of<CartProvider>(context, listen: false).cartItems;
    double totalAmount = Provider.of<CartProvider>(context, listen: false).totalAmount;

    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('User not logged in.')));
      return;
    }

    var order = {
      'userId': user.uid,
      'name': name,
      'phone': phone,
      'address': address,
      'cartItems': cartItems,
      'totalAmount': totalAmount,
      'status': 'Pending',
      'timestamp': FieldValue.serverTimestamp(),
    };

    try {
      DocumentReference orderRef = await FirebaseFirestore.instance.collection('orders').add(order);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => RestaurantOrderDetailsPage(orderId: orderRef.id)),
      );

      Provider.of<CartProvider>(context, listen: false).clearCart();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error placing order: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enter Your Address')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) => value == null || value.isEmpty ? 'Please enter your name' : null,
              ),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Please enter your phone number';
                  if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) return 'Enter a valid 10-digit phone number';
                  return null;
                },
              ),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Address'),
                validator: (value) => value == null || value.isEmpty ? 'Please enter your address' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _placeOrder,
                child: Text('Place Order'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
