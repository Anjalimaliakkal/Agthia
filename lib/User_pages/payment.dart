// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:intl/intl.dart';

// void main() {
//   runApp(PaymentApp());
// }

// class PaymentApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: PaymentScreen(),
//     );
//   }
// }

// class PaymentScreen extends StatefulWidget {
//   @override
//   _PaymentScreenState createState() => _PaymentScreenState();
// }

// class _PaymentScreenState extends State<PaymentScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _cardHolderController = TextEditingController();
//   final TextEditingController _cardNumberController = TextEditingController();
//   final TextEditingController _expiryDateController = TextEditingController();
//   final TextEditingController _cvvController = TextEditingController();

//   // Validation Functions
//   String? validateCardHolder(String? value) {
//     if (value == null || value.isEmpty) {
//       return "Cardholder's name is required";
//     }
//     return null;
//   }

//   String? validateCardNumber(String? value) {
//     if (value == null || value.isEmpty) {
//       return "Card number is required";
//     } else if (value.length != 16) {
//       return "Card number must be 16 digits";
//     }
//     return null;
//   }

//   String? validateExpiryDate(String? value) {
//     if (value == null || value.isEmpty) {
//       return "Expiry date is required";
//     }
//     return null;
//   }

//   String? validateCVV(String? value) {
//     if (value == null || value.isEmpty) {
//       return "CVV is required";
//     } else if (value.length != 3) {
//       return "CVV must be 3 digits";
//     }
//     return null;
//   }

//   void _submitPayment() {
//     if (_formKey.currentState!.validate()) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Payment Successful!")),
//       );
//     }
//   }

//   Future<void> _selectExpiryDate(BuildContext context) async {
//     DateTime now = DateTime.now();
//     DateTime firstDate = DateTime(now.year, now.month);
//     DateTime lastDate = DateTime(now.year + 10, 12); // Allow selection up to 10 years ahead

//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: firstDate,
//       firstDate: firstDate,
//       lastDate: lastDate,
//       builder: (context, child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: Colors.green,
//             colorScheme: ColorScheme.light(primary: Colors.green),
//             buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child!,
//         );
//       },
//     );

//     if (picked != null && picked != firstDate) {
//       setState(() {
//         _expiryDateController.text = DateFormat('MM/yy').format(picked);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 191, 217, 229),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Container(
//             padding: EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black26,
//                   blurRadius: 6,
//                   offset: Offset(0, 2),
//                 ),
//               ],
//             ),
//             width: 550,
//             height: 500,
            
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(Icons.lock, size: 30, color: Colors.blue),
//                   Text("Payment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),),
//                   SizedBox(height: 15),
//                   TextFormField(
//                     controller: _cardHolderController,
//                     decoration: InputDecoration(
//                       labelText: "Cardholder's Name",
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: validateCardHolder,
//                   ),
//                   SizedBox(height: 20),
//                   TextFormField(
//                     controller: _cardNumberController,
//                     decoration: InputDecoration(
//                       labelText: "Card Number",
//                       border: OutlineInputBorder(),
//                       suffixIcon: Icon(Icons.credit_card),
//                     ),
//                     keyboardType: TextInputType.number,
//                     inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                     maxLength: 16,
//                     validator: validateCardNumber,
//                   ),
//                   SizedBox(height: 10),
//                   Expanded(
//                     child: TextFormField(
//                       controller: _expiryDateController,
//                       decoration: InputDecoration(
//                         labelText: "Expiry Date (MM/YY)",
//                         border: OutlineInputBorder(),
//                         suffixIcon: IconButton(
//                           icon: Icon(Icons.calendar_today),
//                           onPressed: () => _selectExpiryDate(context),
//                         ),
//                       ),
//                       readOnly: true,
//                       validator: validateExpiryDate,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Expanded(
//                     child: TextFormField(
//                       controller: _cvvController,
//                       decoration: InputDecoration(
//                         labelText: "CVV",
//                         border: OutlineInputBorder(),
//                       ),
//                       keyboardType: TextInputType.number,
//                       obscureText: true,
//                       maxLength: 3,
//                       validator: validateCVV,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: _submitPayment,
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green,
//                       padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     child: Text("Pay Now", style: TextStyle(fontSize: 18, color: Colors.white)),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class PaymentPage extends StatelessWidget {
//   final double totalAmount;

//   PaymentPage({required this.totalAmount});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Credit Card Payment")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Text("Total Amount: \$${totalAmount.toStringAsFixed(2)}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//             SizedBox(height: 20),
//             TextField(decoration: InputDecoration(labelText: "Card Number")),
//             TextField(decoration: InputDecoration(labelText: "Expiry Date")),
//             TextField(decoration: InputDecoration(labelText: "CVV")),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle Payment Logic Here
//                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Payment Successful!")));
//                 Navigator.pop(context);
//               },
//               child: Text("Pay Now"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class PaymentPage extends StatefulWidget {
//   final String name;
//   final String phone;
//   final String address;
//   final List<Map<String, dynamic>> cartItems;
//   final double totalAmount;
//   final double shippingCharge;

//   PaymentPage({
//     required this.name,
//     required this.phone,
//     required this.address,
//     required this.cartItems,
//     required this.totalAmount,
//     required this.shippingCharge,
//   });

//   @override
//   _PaymentPageState createState() => _PaymentPageState();
// }

// class _PaymentPageState extends State<PaymentPage> {
//   final _formKey = GlobalKey<FormState>();
//   String cardNumber = '';
//   String expiryDate = '';
//   String cvv = '';

//   void _processPayment() {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();

//       // Simulating a successful payment
//       Future.delayed(Duration(seconds: 2), () {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text("Payment Successful!")),
//         );

//         // After successful payment, navigate back
//         Navigator.pop(context);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Payment")),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               Text("Total Amount: \$${widget.totalAmount + widget.shippingCharge}",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               SizedBox(height: 20),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Card Number'),
//                 keyboardType: TextInputType.number,
//                 validator: (value) =>
//                     value!.length == 16 ? null : 'Enter a valid 16-digit card number',
//                 onSaved: (value) => cardNumber = value!,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Expiry Date (MM/YY)'),
//                 keyboardType: TextInputType.datetime,
//                 validator: (value) =>
//                     value!.length == 5 ? null : 'Enter a valid expiry date',
//                 onSaved: (value) => expiryDate = value!,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'CVV'),
//                 keyboardType: TextInputType.number,
//                 obscureText: true,
//                 validator: (value) =>
//                     value!.length == 3 ? null : 'Enter a valid 3-digit CVV',
//                 onSaved: (value) => cvv = value!,
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _processPayment,
//                 child: Text("Pay Now"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:agthia/Restaurant_pages/confirmation_page.dart';

// class PaymentPage extends StatefulWidget {
//   final String name;
//   final String phone;
//   final String address;
//   //final List<Map<String, dynamic>> cartItems;
//   final double totalAmount;
//   final double shippingCharge;

//   PaymentPage({
//     required this.name,
//     required this.phone,
//     required this.address,
//    // required this.cartItems,
//     required this.totalAmount,
//     required this.shippingCharge,
//   });

//   @override
//   _PaymentPageState createState() => _PaymentPageState();
// }


// class _PaymentPageState extends State<PaymentPage> {
//   String selectedPaymentMethod = 'Credit Card';
//   final TextEditingController _cardNumberController = TextEditingController();
//   final TextEditingController _expiryDateController = TextEditingController();
//   final TextEditingController _cvvController = TextEditingController();

//   void processPayment() {
//     if (selectedPaymentMethod == 'Credit Card') {
//       if (_cardNumberController.text.isEmpty ||
//           _expiryDateController.text.isEmpty ||
//           _cvvController.text.isEmpty) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Please enter all card details.')),
//         );
//         return;
//       }
//       // Simulate payment processing
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Processing Payment...')),
//       );
//       Future.delayed(Duration(seconds: 2), () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (_) => ConfirmationPage(orderId: ), // Replace with actual orderId
//           ),
//         );
//       });
//     } else {
//       // If cash on delivery, go directly to confirmation page
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (_) => ConfirmationPage(orderId: ),
//         ),
//       );
//     }
//   }

  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Payment')),
//       backgroundColor: const Color.fromARGB(255, 203, 212, 219),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Total Amount: \$${widget.totalAmount + widget.shippingCharge}',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

//             SizedBox(height: 20),
//             Text('Select Payment Method:', style: TextStyle(fontSize: 16)),
//             DropdownButton<String>(
//               value: selectedPaymentMethod,
//               items: [
//                 DropdownMenuItem(value: 'Credit Card', child: Text('Credit Card')),
//                 //DropdownMenuItem(value: 'Cash on Delivery', child: Text('Cash on Delivery')),
//               ],
//               onChanged: (newValue) {
//                 setState(() {
//                   selectedPaymentMethod = newValue!;
//                 });
//               },
//             ),

//             if (selectedPaymentMethod == 'Credit Card') ...[
//               SizedBox(height: 20),
//               TextField(
//                 controller: _cardNumberController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(labelText: 'Card Number'),
//               ),
//               TextField(
//                 controller: _expiryDateController,
//                 keyboardType: TextInputType.datetime,
//                 decoration: InputDecoration(labelText: 'Expiry Date (MM/YY)'),
//               ),
//               TextField(
//                 controller: _cvvController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(labelText: 'CVV'),
//                 obscureText: true,
//               ),
//             ],

//             SizedBox(height: 30),
//             Center(
//               child: ElevatedButton(
//                 onPressed: processPayment,
//                 style: ElevatedButton.styleFrom(
//                   shape: BeveledRectangleBorder(),
//                   backgroundColor: Colors.green,
//                 ),
//                 child: Text(
//                   selectedPaymentMethod == 'Credit Card' ? 'Pay Now' : 'Confirm Order',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:agthia/User_pages/cart_provider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:agthia/Restaurant_pages/confirmation_page.dart';

// class PaymentPage extends StatefulWidget {
//   final String name;
//   final String phone;
//   final String address;
//   final List<Map<String, dynamic>> cartItems;
//   final double totalAmount;
//   final double shippingCharge;
 

//   PaymentPage({
//     required this.name,
//     required this.phone,
//     required this.address,
//     required this.cartItems,
//     required this.totalAmount,
//     required this.shippingCharge,
   
//   });

//   @override
//   _PaymentPageState createState() => _PaymentPageState();
// }

// class _PaymentPageState extends State<PaymentPage> {
//   String selectedPaymentMethod = 'Credit Card';
//   final TextEditingController _cardNumberController = TextEditingController();
//   final TextEditingController _expiryDateController = TextEditingController();
//   final TextEditingController _cvvController = TextEditingController();

//   Future<void> processPayment() async {
//     if (selectedPaymentMethod == 'Credit Card') {
//       if (_cardNumberController.text.isEmpty ||
//           _expiryDateController.text.isEmpty ||
//           _cvvController.text.isEmpty) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Please enter all card details.')),
//         );
//         return;
//       }

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Payment Successfull...')),
//       );

//       await Future.delayed(Duration(seconds: 2));
//     }

//     try {
//       User? user = FirebaseAuth.instance.currentUser;
//       if (user == null) {
//         throw Exception("User not logged in.");
//       }

//       String userId = user.uid;
//       var order = {
//         'userId': userId,
//         'name': widget.name,
//         'phone': widget.phone,
//         'address': widget.address,
//         //'cartItems': widget.cartItems.map((item) => item).toList(),
//         'totalAmount': widget.totalAmount,
//         'shippingCharge': widget.shippingCharge,
//         'paymentMethod': selectedPaymentMethod,
//         'status': 'Pending',
//         'timestamp': FieldValue.serverTimestamp(),
//       };

//       DocumentReference orderRef =
//           await FirebaseFirestore.instance.collection('orders').add(order);
//       String orderId = orderRef.id;

//       print("✅ Order placed successfully. Order ID: $orderId");

//       // Navigate to Confirmation Page
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (_) => ConfirmationPage(orderId: orderId)),
//       );

//       // Clear Cart
//       Provider.of<CartProvider>(context, listen: false).clearCart();
//     } catch (e) {
//       print("❌ Error placing order: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error placing order: $e')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Payment')),
//       backgroundColor: const Color.fromARGB(255, 203, 212, 219),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Total Amount: \$${widget.totalAmount + widget.shippingCharge}',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             SizedBox(height: 20),
//             Text('Payment Method:', style: TextStyle(fontSize: 16)),
//             DropdownButton<String>(
//               value: selectedPaymentMethod,
//               items: [
//                 DropdownMenuItem(value: 'Credit Card', child: Text('Credit Card')),
//                 //DropdownMenuItem(value: 'Cash on Delivery', child: Text('Cash on Delivery')),
//               ],
//               onChanged: (newValue) {
//                 setState(() {
//                   selectedPaymentMethod = newValue!;
//                 });
//               },
//             ),
//             if (selectedPaymentMethod == 'Credit Card') ...[
//               SizedBox(height: 20),
//               TextField(
//                 controller: _cardNumberController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(labelText: 'Card Number'),
//               ),
//               TextField(
//                 controller: _expiryDateController,
//                 keyboardType: TextInputType.datetime,
//                 decoration: InputDecoration(labelText: 'Expiry Date (MM/YY)'),
//               ),
//               TextField(
//                 controller: _cvvController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(labelText: 'CVV'),
//                 obscureText: true,
//               ),
//             ],
//             SizedBox(height: 30),
//             Center(
//               child: ElevatedButton(
//                 onPressed: processPayment,
//                 style: ElevatedButton.styleFrom(
//                   shape: BeveledRectangleBorder(),
//                   backgroundColor: Colors.green,
//                 ),
//                 child: Text(
//                   selectedPaymentMethod == 'Credit Card' ? 'Pay Now' : 'Confirm Order',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:agthia/User_pages/cart_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:agthia/User_pages/confirmation_page.dart';

class PaymentPage extends StatefulWidget {
  final String name;
  final String phone;
  final String address;
  final double totalAmount;
  final double shippingCharge;

  PaymentPage({
    required this.name,
    required this.phone,
    required this.address,
    required this.totalAmount,
    required this.shippingCharge,
  });

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String selectedPaymentMethod = 'Credit Card';
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

  Future<void> processPayment() async {
    if (selectedPaymentMethod == 'Credit Card') {
      if (_cardNumberController.text.isEmpty ||
          _expiryDateController.text.isEmpty ||
          _cvvController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please enter all card details.')),
        );
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Processing Payment...')),
      );

      await Future.delayed(Duration(seconds: 2));
    }

    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        throw Exception("User not logged in.");
      }

      String userId = user.uid;

      // ✅ Fetch cart items from CartProvider
      final cartProvider = Provider.of<CartProvider>(context, listen: false);
      final List<Map<String, dynamic>> cartItems =
          cartProvider.cartItems.map((item) => item.toJson()).toList();

      if (cartItems.isEmpty) {
        throw Exception("Cart is empty.");
      }

      print("🛒 Cart Items: $cartItems"); // ✅ Debugging

      var order = {
        'userId': userId,
        'name': widget.name,
        'phone': widget.phone,
        'address': widget.address,
        'cartItems': cartItems, // ✅ Saving cart items
        'totalAmount': widget.totalAmount,
        'shippingCharge': widget.shippingCharge,
        'paymentMethod': selectedPaymentMethod,
        'status': 'Pending',
        'timestamp': FieldValue.serverTimestamp(),
      };

      // ✅ Save Order to Firestore
      DocumentReference orderRef =
          await FirebaseFirestore.instance.collection('orders').add(order);
      String orderId = orderRef.id;

      print("✅ Order placed successfully. Order ID: $orderId");

      // ✅ Navigate to Confirmation Page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => ConfirmationPage(orderId: orderId)),
      );

      // ✅ Clear Cart after placing order
      cartProvider.clearCart();
    } catch (e) {
      print("❌ Error placing order: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error placing order: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Payment')),
      backgroundColor: const Color.fromARGB(255, 203, 212, 219),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total Amount: \$${widget.totalAmount + widget.shippingCharge}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('Payment Method:', style: TextStyle(fontSize: 16)),
            DropdownButton<String>(
              value: selectedPaymentMethod,
              items: [
                DropdownMenuItem(value: 'Credit Card', child: Text('Credit Card')),
                DropdownMenuItem(value: 'Cash on Delivery', child: Text('Cash on Delivery')),
              ],
              onChanged: (newValue) {
                setState(() {
                  selectedPaymentMethod = newValue!;
                });
              },
            ),
            if (selectedPaymentMethod == 'Credit Card') ...[
              SizedBox(height: 20),
              TextField(
                controller: _cardNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Card Number'),
              ),
              TextField(
                controller: _expiryDateController,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(labelText: 'Expiry Date (MM/YY)'),
              ),
              TextField(
                controller: _cvvController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'CVV'),
                obscureText: true,
              ),
            ],
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: processPayment,
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  backgroundColor: Colors.green,
                ),
                child: Text(
                  selectedPaymentMethod == 'Credit Card' ? 'Pay Now' : 'Confirm Order',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
