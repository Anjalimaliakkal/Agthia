// // import 'package:agthia/User_pages/cart_provider.dart';
// // import 'package:agthia/User_pages/order_confirmation.dart';
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // // import 'package:agthia/provider/cartprovider.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // //import 'package:agthia/User_pages/confirmationpage.dart';

// // class AddressFormPage extends StatefulWidget {
// //   @override
// //   _AddressFormPageState createState() => _AddressFormPageState();
// // }

// // class _AddressFormPageState extends State<AddressFormPage> {
// //   final _addressController = TextEditingController();
// //   final _nameController = TextEditingController();
// //   final _phoneController = TextEditingController();

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text('Enter Your Address')),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           children: [
// //             TextField(
// //               controller: _nameController,
// //               decoration: InputDecoration(labelText: 'Name'),
// //             ),
// //             TextField(
// //               controller: _phoneController,
// //               decoration: InputDecoration(labelText: 'Phone Number'),
// //             ),
// //             TextField(
// //               controller: _addressController,
// //               decoration: InputDecoration(labelText: 'Address'),
// //             ),
// //             SizedBox(height: 20),
// //             ElevatedButton(
// //               onPressed: () async {
// //                 // Get the user's details and cart items
// //                 String name = _nameController.text;
// //                 String phone = _phoneController.text;
// //                 String address = _addressController.text;
// //                 var cartItems = Provider.of<CartProvider>(context, listen: false).cartItems;
// //                 double totalAmount = Provider.of<CartProvider>(context, listen: false).totalAmount;

// //                 // Get the current user ID from Firebase Authentication
// //                 User? user = FirebaseAuth.instance.currentUser;
// //                 String userId = user?.uid ?? '';

// //                 // Create an order object with status "Pending"
// //                 var order = {
// //                   'userId': userId, // Add user ID
// //                   'name': name,
// //                   'phone': phone,
// //                   'address': address,
// //                   'cartItems': cartItems,
// //                   'totalAmount': totalAmount,
// //                   'status': 'Pending', // Initial status is "Pending"
// //                   'timestamp': FieldValue.serverTimestamp(),
// //                 };

// //                 // Save the order to Firestore
// //                 try {
// //                   DocumentReference orderRef = await FirebaseFirestore.instance.collection('orders').add(order);

// //                   // After placing the order, navigate to confirmation page
// //                   Navigator.push(
// //                     context,
// //                     MaterialPageRoute(builder: (_) => ConfirmationPage(orderId: orderRef.id)),
// //                   );

// //                   // Clear the cart
// //                   Provider.of<CartProvider>(context, listen: false).clearCart();
// //                 } catch (e) {
// //                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error placing order.')));
// //                 }
// //               },
// //               child: Text('Place Order'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }


// import 'package:agthia/User_pages/cart_provider.dart';
// import 'package:agthia/Restaurant_pages/order_confirmation.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class AddressFormPage extends StatefulWidget {
//   @override
//   _AddressFormPageState createState() => _AddressFormPageState();
// }

// class _AddressFormPageState extends State<AddressFormPage> {
//   final _formKey = GlobalKey<FormState>();
//   final _addressController = TextEditingController();
//   final _nameController = TextEditingController();
//   final _phoneController = TextEditingController();

//   @override
//   void dispose() {
//     _addressController.dispose();
//     _nameController.dispose();
//     _phoneController.dispose();
//     super.dispose();
//   }

//   Future<void> _placeOrder() async {
//     if (!_formKey.currentState!.validate()) return;

//     String name = _nameController.text.trim();
//     String phone = _phoneController.text.trim();
//     String address = _addressController.text.trim();
//     var cartItems = Provider.of<CartProvider>(context, listen: false).cartItems;
//     double totalAmount = Provider.of<CartProvider>(context, listen: false).totalAmount;

//     User? user = FirebaseAuth.instance.currentUser;
//     if (user == null) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('User not logged in.')));
//       return;
//     }

//     var order = {
//       'userId': user.uid,
//       'name': name,
//       'phone': phone,
//       'address': address,
//       'cartItems': cartItems,
//       'totalAmount': totalAmount,
//       'status': 'Pending',
//       'timestamp': FieldValue.serverTimestamp(),
//     };

//     try {
//       DocumentReference orderRef = await FirebaseFirestore.instance.collection('orders').add(order);

//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => RestaurantOrderDetailsPage(orderId: orderRef.id)),
//       );

//       Provider.of<CartProvider>(context, listen: false).clearCart();
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error placing order: $e')));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Enter Your Address')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: _nameController,
//                 decoration: InputDecoration(labelText: 'Name'),
//                 validator: (value) => value == null || value.isEmpty ? 'Please enter your name' : null,
//               ),
//               TextFormField(
//                 controller: _phoneController,
//                 decoration: InputDecoration(labelText: 'Phone Number'),
//                 keyboardType: TextInputType.phone,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) return 'Please enter your phone number';
//                   if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) return 'Enter a valid 10-digit phone number';
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _addressController,
//                 decoration: InputDecoration(labelText: 'Address'),
//                 validator: (value) => value == null || value.isEmpty ? 'Please enter your address' : null,
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _placeOrder,
//                 child: Text('Place Order'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'package:agthia/Restaurant_pages/confirmation_page.dart';
// import 'package:agthia/User_pages/cart_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';


// class AddressFormPage extends StatefulWidget {
//   @override
//   _AddressFormPageState createState() => _AddressFormPageState();
// }

// class _AddressFormPageState extends State<AddressFormPage> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _addressController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Enter Address')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(controller: _nameController, decoration: InputDecoration(labelText: 'Full Name')),
//             TextField(controller: _phoneController, decoration: InputDecoration(labelText: 'Phone Number')),
//             TextField(controller: _addressController, decoration: InputDecoration(labelText: 'Delivery Address')),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () async {
//                 String name = _nameController.text.trim();
//                 String phone = _phoneController.text.trim();
//                 String address = _addressController.text.trim();
//                 var cartItems = Provider.of<CartProvider>(context, listen: false).cartItems;
//                 double totalAmount = Provider.of<CartProvider>(context, listen: false).totalAmount;

//                 User? user = FirebaseAuth.instance.currentUser;
//                 if (user == null) {
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please log in first.')));
//                   return;
//                 }

//                 if (name.isEmpty || phone.isEmpty || address.isEmpty || cartItems.isEmpty) {
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Fill all fields and add items to cart.')));
//                   return;
//                 }

//                 String userId = user.uid;

//                 var order = {
//                   'userId': userId,
//                   'name': name,
//                   'phone': phone,
//                   'address': address,
//                   'cartItems': cartItems.map((item) => item.toJson()).toList(),
//                   'totalAmount': totalAmount,
//                   'status': 'Pending',
//                   'timestamp': FieldValue.serverTimestamp(),
//                 };

//                 try {
//                   DocumentReference orderRef = await FirebaseFirestore.instance.collection('orders').add(order);
//                   String orderId = orderRef.id;

//                   print("✅ Order placed successfully. Order ID: $orderId");

//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (_) => ConfirmationPage(orderId: orderId)),
//                   );

//                   Provider.of<CartProvider>(context, listen: false).clearCart();
//                 } catch (e) {
//                   print("❌ Error placing order: $e");
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error placing order: $e')));
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


// import 'package:agthia/User_pages/confirmation_page.dart';
// import 'package:agthia/User_pages/cart_provider.dart';
// import 'package:agthia/User_pages/payment.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class AddressFormPage extends StatefulWidget {
//   @override
//   _AddressFormPageState createState() => _AddressFormPageState();
// }

// class _AddressFormPageState extends State<AddressFormPage> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _addressController = TextEditingController();

//   void placeOrder() async {
//     String name = _nameController.text.trim();
//     String phone = _phoneController.text.trim();
//     String address = _addressController.text.trim();
//     var cartItems = Provider.of<CartProvider>(context, listen: false).cartItems;
//     double totalAmount = Provider.of<CartProvider>(context, listen: false).totalAmount;
//     double shippingCharge = Provider.of<CartProvider>(context, listen: false).shippingCharge;
//     String paymentMethod = Provider.of<CartProvider>(context, listen: false).paymentMethod;

//     User? user = FirebaseAuth.instance.currentUser;
//     if (user == null) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please log in first.')));
//       return;
//     }

//     if (name.isEmpty || phone.isEmpty || address.isEmpty || cartItems.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Fill all fields.')));
//       return;
//     }

//     if (paymentMethod == 'Credit Card') {
//   // Navigator.push(
//   //   context,
//   //   MaterialPageRoute(builder: (_) => PaymentPage(
//   //     name: name,
//   //     phone: phone,
//   //     address: address,
//   //     //cartItems: cartItems,
//   //     totalAmount: totalAmount,
//   //     shippingCharge: shippingCharge,
//   //   )),
//   // );
//   Navigator.push(
//   context,
//   MaterialPageRoute(
//     builder: (_) => PaymentPage(
//       name: name,
//       phone: phone,
//       address: address,
//       //cartItems: cartItems.map((item) => item.toJson()).toList(), // Ensure cartItems is not null
//       totalAmount: totalAmount,
//       shippingCharge: shippingCharge,
//     ),
//   ),
// );

//   return;
// } 

// // if (CartProvider.paymentMethod == 'Credit Card') {
// //     // Navigate to payment page before placing order
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(builder: (_) => PaymentPage(totalAmount: CartProvider().totalAmount)),
// //     );
// //     return;
// //   }
//     String userId = user.uid;

//     var order = {
//       'userId': userId,
//       'name': name,
//       'phone': phone,
//       'address': address,
//       'cartItems': cartItems.map((item) => item.toJson()).toList(),
//       'totalAmount': totalAmount,
//       'shippingCharge': shippingCharge,
//       'paymentMethod': paymentMethod,
//       'status': 'Pending',
//       'timestamp': FieldValue.serverTimestamp(),
//     };

//     try {
//       DocumentReference orderRef = await FirebaseFirestore.instance.collection('orders').add(order);
//       String orderId = orderRef.id;

//       print("✅ Order placed successfully. Order ID: $orderId");

//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (_) => ConfirmationPage(orderId: orderId)),
//       );

//       Provider.of<CartProvider>(context, listen: false).clearCart();
//     } catch (e) {
//       print("❌ Error placing order: $e");
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error placing order: $e')));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Enter Address')),
//       backgroundColor: const Color.fromARGB(255, 203, 212, 219),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             SizedBox(
//               width: 400,
//               child: TextField(controller: _nameController, decoration: InputDecoration(labelText: 'Full Name'))),
//             SizedBox(
//               width: 400,
//               child: TextField(controller: _phoneController, decoration: InputDecoration(labelText: 'Phone Number'))),
//             SizedBox(
//               width: 400,
//               child: TextField(controller: _addressController, decoration: InputDecoration(labelText: 'Delivery Address'))),
//             SizedBox(height: 20),

//              Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Shipping Charge:'),
//                     DropdownButton<double>(
//                       value: Provider.of<CartProvider>(context).shippingCharge,
//                       items: [
//                         DropdownMenuItem(value: 5.0, child: Text('Standard - \$5')),
//                         DropdownMenuItem(value: 10.0, child: Text('Express - \$10')),
//                         DropdownMenuItem(value: 0.0, child: Text('Free')),
//                       ],
//                       onChanged: (newValue) {
//                         if (newValue != null) {
//                           Provider.of<CartProvider>(context, listen: false).setShippingCharge(newValue);
//                         }
//                       },
//                     ),
//                   ],
//                 ),

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Payment Method:'),
//                     DropdownButton<String>(
//                       value: Provider.of<CartProvider>(context).paymentMethod.isEmpty
//                           ? null
//                           : Provider.of<CartProvider>(context).paymentMethod,
//                       items: [
//                         DropdownMenuItem(value: 'Credit Card', child: Text('Credit Card')),
//                         DropdownMenuItem(value: 'Cash', child: Text('Cash on Delivery')),
//                       ],
//                       onChanged: (newValue) {
//                         if (newValue != null) {
//                           Provider.of<CartProvider>(context, listen: false).setPaymentMethod(newValue);
//                         }
//                       },
//                     ),
//                   ],
//                 ),

//                  Consumer<CartProvider>(
//                   builder: (context, cartProvider, child) {
//                     return Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text('Total: \$${cartProvider.totalAmount.toStringAsFixed(2)}'),
//                         // ElevatedButton(
//                         //   onPressed: () {
//                         //     if (cartProvider.paymentMethod.isEmpty) {
//                         //       ScaffoldMessenger.of(context).showSnackBar(
//                         //         SnackBar(content: Text('Please select a payment method.')),
//                         //       );
//                         //       return;
//                         //     }
//                         //     Navigator.push(
//                         //       context,
//                         //       MaterialPageRoute(builder: (_) => AddressFormPage()),
//                         //     );
//                         //   },
//                         //   child: Text('Place Order'),
//                         // ),
                        
//                          Center(
//                            child: ElevatedButton(
//                                          onPressed: placeOrder,
//                                          style: ElevatedButton.styleFrom(shape: BeveledRectangleBorder(),backgroundColor: Colors.green),
//                                          child: Text('Place Order',style: TextStyle(color: Colors.white),),
//                                        ),
//                          ),
//                       ],
//                     );
//                   },
//                 ),
//             // ElevatedButton(
//             //   onPressed: placeOrder,
//             //   child: Text('Place Order'),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:agthia/User_pages/confirmation_page.dart';
import 'package:agthia/User_pages/cart_provider.dart';
import 'package:agthia/User_pages/payment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddressFormPage extends StatefulWidget {
  @override
  _AddressFormPageState createState() => _AddressFormPageState();
}

class _AddressFormPageState extends State<AddressFormPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  void placeOrder() async {
    String name = _nameController.text.trim();
    String phone = _phoneController.text.trim();
    String address = _addressController.text.trim();
    var cartItems = Provider.of<CartProvider>(context, listen: false).cartItems;
    double totalAmount = Provider.of<CartProvider>(context, listen: false).totalAmount;
    double shippingCharge = Provider.of<CartProvider>(context, listen: false).shippingCharge;
    String paymentMethod = Provider.of<CartProvider>(context, listen: false).paymentMethod;

    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please log in first.')));
      return;
    }

    if (name.isEmpty || phone.isEmpty || address.isEmpty || cartItems.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Fill all fields.')));
      return;
    }

    if (paymentMethod == 'Credit Card') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => PaymentPage(
            name: name,
            phone: phone,
            address: address,
            totalAmount: totalAmount,
            shippingCharge: shippingCharge,
          ),
        ),
      );
      return;
    }


    

    String userId = user.uid;

    var order = {
      'userId': userId,
      'name': name,
      'phone': phone,
      'address': address,
      'cartItems': cartItems.map((item) => item.toJson()).toList(),
      'totalAmount': totalAmount,
      'shippingCharge': shippingCharge,
      'paymentMethod': paymentMethod,
      'status': 'Pending',
      'timestamp': FieldValue.serverTimestamp(),
    };

    try {
      DocumentReference orderRef = await FirebaseFirestore.instance.collection('orders').add(order);
      String orderId = orderRef.id;

      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => ConfirmationPage(orderId: orderId)),
      );

      Provider.of<CartProvider>(context, listen: false).clearCart();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error placing order: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Enter Delivery Address')),
       appBar: AppBar(
          title: Center(
            child: Transform.translate(
              offset: Offset(-10.0, 0.0),
              child: Image(
                image: AssetImage("asset/logo_agthia.jpg"),
                height: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xFF282d37),
        ),
      backgroundColor:const Color.fromARGB(255, 216, 225, 233),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      SizedBox(
                        width: 500,
                        child: buildTextField(_nameController, 'Full Name', Icons.person)),
                      SizedBox(
                        width: 500,
                        child: buildTextField(_phoneController, 'Phone Number', Icons.phone)),
                      SizedBox(
                        width: 500,
                        child: buildTextField(_addressController, 'Delivery Address', Icons.home)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              buildDropdownSection(),
              SizedBox(height: 20),
              Consumer<CartProvider>(
                builder: (context, cartProvider, child) {
                  return Column(
                    children: [
                      Text(
                        'Total: \$${cartProvider.totalAmount.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: placeOrder,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          elevation: 4,
                        ),
                        child: Text(
                          'Place Order',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(TextEditingController controller, String label, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, color: Colors.blue),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }

  Widget buildDropdownSection() {
    return Center(
      child: SizedBox(
        width: 600,
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shipping Charge:', style: TextStyle(fontSize: 16)),
                    Consumer<CartProvider>(
                      builder: (context, cartProvider, child) {
                        return DropdownButton<double>(
                          value: cartProvider.shippingCharge,
                          items: [
                            DropdownMenuItem(value: 5.0, child: Text('Standard - \$5')),
                            DropdownMenuItem(value: 10.0, child: Text('Express - \$10')),
                            DropdownMenuItem(value: 0.0, child: Text('Free')),
                          ],
                          onChanged: (newValue) {
                            if (newValue != null) {
                              cartProvider.setShippingCharge(newValue);
                            }
                          },
                        );
                      },
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Payment Method:', style: TextStyle(fontSize: 16)),
                    Consumer<CartProvider>(
                      builder: (context, cartProvider, child) {
                        return DropdownButton<String>(
                          value: cartProvider.paymentMethod.isEmpty ? null : cartProvider.paymentMethod,
                          items: [
                            DropdownMenuItem(value: 'Credit Card', child: Text('Credit Card')),
                            DropdownMenuItem(value: 'Cash', child: Text('Cash on Delivery')),
                          ],
                          onChanged: (newValue) {
                            if (newValue != null) {
                              cartProvider.setPaymentMethod(newValue);
                            }
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
