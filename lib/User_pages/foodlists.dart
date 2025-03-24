
// import 'package:agthia/User_pages/address.dart';
// import 'package:agthia/User_pages/cart_page.dart';
// import 'package:agthia/User_pages/cart_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// //import 'package:agthia/User_pages/cartpage.dart'; // Make sure CartPage is imported
// //import 'package:agthia/provider/cartprovider.dart'; // Import CartProvider

// class FoodItemsPage extends StatelessWidget {
//   final String restaurantId;

//   FoodItemsPage({required this.restaurantId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Menu'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.shopping_cart),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => CartPage()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: StreamBuilder<QuerySnapshot>(
//               stream: FirebaseFirestore.instance
//                   .collection('restaurants')
//                   .doc(restaurantId)
//                   .collection('menu')
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(child: CircularProgressIndicator());
//                 }

//                 var items = snapshot.data!.docs;
//                 return ListView.builder(
//                   itemCount: items.length,
//                   itemBuilder: (context, index) {
//                     var item = items[index];
//                     return ListTile(
//                       leading: item['image'] != null && item['image'].isNotEmpty
//                           ? Image.network(item['image'], width: 50, height: 50, fit: BoxFit.cover)
//                           : Icon(Icons.fastfood),
//                       title: Text(item['name'] ?? "No Name"),
//                       subtitle: Text("\$${item['price'] ?? "N/A"}"),
//                       trailing: Consumer<CartProvider>(
//                         builder: (context, cartProvider, child) {
//                           // Find if the item is already in the cart
//                           var cartItem = cartProvider.cartItems
//                               .firstWhere((cartItem) => cartItem['id'] == item.id, orElse: () => {});
//                           bool itemInCart = cartItem.isNotEmpty;

//                           return Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               if (itemInCart)
//                                 IconButton(
//                                   icon: Icon(Icons.remove),
//                                   onPressed: () {
//                                     cartProvider.updateQuantity(item.id, cartItem['quantity'] - 1);
//                                   },
//                                 ),
//                               if (!itemInCart)
//                                 ElevatedButton(
//                                   onPressed: () {
//                                     cartProvider.addToCart(item.id, item['name'], item['price'].toDouble());
//                                   },
//                                   child: Text('Add to Cart'),
//                                 ),
//                               if (itemInCart)
//                                 Text('${cartItem['quantity']}'),
//                               if (itemInCart)
//                                 IconButton(
//                                   icon: Icon(Icons.add),
//                                   onPressed: () {
//                                     cartProvider.updateQuantity(item.id, cartItem['quantity'] + 1);
//                                   },
//                                 ),
//                             ],
//                           );
//                         },
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//           Consumer<CartProvider>(
//             builder: (context, cartProvider, child) {
//               return Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Total: \$${cartProvider.totalAmount.toStringAsFixed(2)}'),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (_) => AddressFormPage()),
//                         );
//                       },
//                       child: Text('Proceed to Checkout'),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:agthia/User_pages/address.dart';
// import 'package:agthia/User_pages/cart_page.dart';
// import 'package:agthia/User_pages/cart_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class FoodItemsPage extends StatelessWidget {
//   final String restaurantId;

//   FoodItemsPage({required this.restaurantId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Menu'),
//         actions: [
//           Consumer<CartProvider>(
//             builder: (context, cartProvider, child) {
//               return Stack(
//                 children: [
//                   IconButton(
//                     icon: Icon(Icons.shopping_cart, size: 28),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (_) => CartPage()),
//                       );
//                     },
//                   ),
//                   if (cartProvider.cartItems.isNotEmpty)
//                     Positioned(
//                       right: 8,
//                       top: 8,
//                       child: Container(
//                         padding: EdgeInsets.all(6),
//                         decoration: BoxDecoration(
//                           color: Colors.red,
//                           shape: BoxShape.circle,
//                         ),
//                         child: Text(
//                           cartProvider.cartItems.length.toString(),
//                           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                 ],
//               );
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: StreamBuilder<QuerySnapshot>(
//               stream: FirebaseFirestore.instance
//                   .collection('restaurants')
//                   .doc(restaurantId)
//                   .collection('menu')
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(child: CircularProgressIndicator());
//                 }

//                 var items = snapshot.data!.docs;
//                 return ListView.builder(
//                   itemCount: items.length,
//                   itemBuilder: (context, index) {
//                     var item = items[index];
//                     return Card(
//                       elevation: 4,
//                       margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                       child: ListTile(
//                         leading: ClipRRect(
//                           borderRadius: BorderRadius.circular(8),
//                           child: item['image'] != null && item['image'].isNotEmpty
//                               ? Image.network(item['image'], width: 60, height: 60, fit: BoxFit.cover)
//                               : Icon(Icons.fastfood, size: 40),
//                         ),
//                         title: Text(item['name'] ?? "No Name", style: TextStyle(fontWeight: FontWeight.bold)),
//                         subtitle: Text("\$${item['price'] ?? "N/A"}", style: TextStyle(color: Colors.green, fontSize: 16)),
//                         trailing: Consumer<CartProvider>(
//                           builder: (context, cartProvider, child) {
//                             var cartItem = cartProvider.cartItems.firstWhere(
//                                 (cartItem) => cartItem['id'] == item.id,
//                                 orElse: () => {});
//                             bool itemInCart = cartItem.isNotEmpty;

//                             return Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 if (itemInCart)
//                                   IconButton(
//                                     icon: Icon(Icons.remove_circle, color: Colors.red),
//                                     onPressed: () {
//                                       cartProvider.updateQuantity(item.id, cartItem['quantity'] - 1);
//                                     },
//                                   ),
//                                 if (!itemInCart)
//                                   ElevatedButton(
//                                     style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
//                                     onPressed: () {
//                                       cartProvider.addToCart(item.id, item['name'], item['price'].toDouble());
//                                     },
//                                     child: Text('Add'),
//                                   ),
//                                 if (itemInCart)
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                                     child: Text('${cartItem['quantity']}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//                                   ),
//                                 if (itemInCart)
//                                   IconButton(
//                                     icon: Icon(Icons.add_circle, color: Colors.green),
//                                     onPressed: () {
//                                       cartProvider.updateQuantity(item.id, cartItem['quantity'] + 1);
//                                     },
//                                   ),
//                               ],
//                             );
//                           },
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//           Consumer<CartProvider>(
//             builder: (context, cartProvider, child) {
//               return Visibility(
//                 visible: cartProvider.totalAmount > 0,
//                 child: Container(
//                   padding: EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, -3)),
//                     ],
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Total: \$${cartProvider.totalAmount.toStringAsFixed(2)}',
//                         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                           textStyle: TextStyle(fontSize: 16),
//                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                         ),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (_) => AddressFormPage()),
//                           );
//                         },
//                         child: Text('Checkout'),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'package:agthia/User_pages/address.dart';
// import 'package:agthia/User_pages/cart_page.dart';
// import 'package:agthia/User_pages/cart_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// // Import CartProvider

// class FoodItemsPage extends StatelessWidget {
//   final String restaurantId;

//   FoodItemsPage({required this.restaurantId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Menu'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.shopping_cart),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => CartPage()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: StreamBuilder<QuerySnapshot>(
//               stream: FirebaseFirestore.instance
//                   .collection('restaurants')
//                   .doc(restaurantId)
//                   .collection('menu')
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(child: CircularProgressIndicator());
//                 }

//                 var items = snapshot.data!.docs;
//                 return ListView.builder(
//                   itemCount: items.length,
//                   itemBuilder: (context, index) {
//                     var item = items[index];
//                     return ListTile(
//                       leading: item['image'] != null && item['image'].isNotEmpty
//                           ? Image.network(item['image'], width: 50, height: 50, fit: BoxFit.cover)
//                           : Icon(Icons.fastfood),
//                       title: Text(item['name'] ?? "No Name"),
//                       subtitle: Text("\$${item['price'] ?? "N/A"}"),
//                       trailing: Consumer<CartProvider>(
//                         builder: (context, cartProvider, child) {
//                           // Find if the item is already in the cart
//                           var cartItem = cartProvider.cartItems
//                               .firstWhere(
//                                 (cartItem) => cartItem.id == item.id, 
//                                 orElse: () => CartItem(id: '', name: '', price: 0.0, quantity: 0),
//                               );

//                           bool itemInCart = cartItem.id.isNotEmpty; // Check if the item is in the cart by checking the id

//                           return Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               if (itemInCart)
//                                 IconButton(
//                                   icon: Icon(Icons.remove),
//                                   onPressed: () {
//                                     cartProvider.updateQuantity(item.id, cartItem.quantity - 1);
//                                   },
//                                 ),
//                               if (!itemInCart)
//                                 ElevatedButton(
//                                   onPressed: () {
//                                     cartProvider.addToCart(item.id, item['name'], item['price'].toDouble());
//                                   },
//                                   child: Text('Add to Cart'),
//                                 ),
//                               if (itemInCart)
//                                 Text('${cartItem.quantity}'),
//                               if (itemInCart)
//                                 IconButton(
//                                   icon: Icon(Icons.add),
//                                   onPressed: () {
//                                     cartProvider.updateQuantity(item.id, cartItem.quantity + 1);
//                                   },
//                                 ),
//                             ],
//                           );
//                         },
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//           Consumer<CartProvider>(
//             builder: (context, cartProvider, child) {
//               return Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Total: \$${cartProvider.totalAmount.toStringAsFixed(2)}'),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (_) => AddressFormPage()),
//                         );
//                       },
//                       child: Text('Proceed to Checkout'),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'cart_page.dart';
// import 'cart_provider.dart';
// import 'address.dart';

// class FoodItemsPage extends StatelessWidget {
//   final String restaurantId;

//   FoodItemsPage({required this.restaurantId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Menu', style: TextStyle(fontWeight: FontWeight.bold)),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.shopping_cart),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => CartPage()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: StreamBuilder<QuerySnapshot>(
//               stream: FirebaseFirestore.instance
//                   .collection('restaurants')
//                   .doc(restaurantId)
//                   .collection('menu')
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(child: CircularProgressIndicator());
//                 }
//                 var items = snapshot.data!.docs;
//                 return ListView.builder(
//                   padding: EdgeInsets.all(10),
//                   itemCount: items.length,
//                   itemBuilder: (context, index) {
//                     var item = items[index];
//                     return Card(
//                       elevation: 4,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       margin: EdgeInsets.symmetric(vertical: 8),
//                       child: ListTile(
//                         contentPadding: EdgeInsets.all(12),
//                         leading: ClipRRect(
//                           borderRadius: BorderRadius.circular(8),
//                           child: item['image'] != null && item['image'].isNotEmpty
//                               ? Image.network(
//                                   item['image'],
//                                   width: 60,
//                                   height: 60,
//                                   fit: BoxFit.cover,
//                                 )
//                               : Icon(Icons.fastfood, size: 40),
//                         ),
//                         title: Text(
//                           item['name'] ?? "No Name",
//                           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                         subtitle: Text(
//                           "\$${item['price']?.toStringAsFixed(2) ?? "N/A"}",
//                           style: TextStyle(fontSize: 16, color: Colors.green),
//                         ),
//                         trailing: Consumer<CartProvider>(
//                           builder: (context, cartProvider, child) {
//                             var cartItem = cartProvider.cartItems.firstWhere(
//                               (cartItem) => cartItem.id == item.id,
//                               orElse: () => CartItem(id: '', name: '', price: 0.0, quantity: 0),
//                             );

//                             bool itemInCart = cartItem.id.isNotEmpty;

//                             return Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 if (itemInCart)
//                                   IconButton(
//                                     icon: Icon(Icons.remove_circle, color: Colors.red),
//                                     onPressed: () {
//                                       cartProvider.updateQuantity(item.id, cartItem.quantity - 1);
//                                     },
//                                   ),
//                                 if (!itemInCart)
//                                   ElevatedButton(
//                                     style: ElevatedButton.styleFrom(
//                                       backgroundColor: Colors.orange,
//                                       foregroundColor: Colors.white,
//                                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                                     ),
//                                     onPressed: () {
//                                       cartProvider.addToCart(item.id, item['name'], item['price'].toDouble());
//                                     },
//                                     child: Text('Add'),
//                                   ),
//                                 if (itemInCart)
//                                   Padding(
//                                     padding: EdgeInsets.symmetric(horizontal: 8),
//                                     child: Text(
//                                       '${cartItem.quantity}',
//                                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 if (itemInCart)
//                                   IconButton(
//                                     icon: Icon(Icons.add_circle, color: Colors.green),
//                                     onPressed: () {
//                                       cartProvider.updateQuantity(item.id, cartItem.quantity + 1);
//                                     },
//                                   ),
//                               ],
//                             );
//                           },
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: Consumer<CartProvider>(
//         builder: (context, cartProvider, child) {
//           return Visibility(
//             visible: cartProvider.cartItems.isNotEmpty,
//             child: FloatingActionButton.extended(
//               backgroundColor: Colors.orange,
//               foregroundColor: Colors.white,
//               icon: Icon(Icons.payment),
//               label: Text('Checkout (\$${cartProvider.totalAmount.toStringAsFixed(2)})'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => AddressFormPage()),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }



// import 'package:agthia/User_pages/address.dart';
// import 'package:agthia/User_pages/cart_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';// Address form page for checkout

// class FoodItemsPage extends StatelessWidget {
//   final String restaurantId;

//   // Make sure the constructor accepts the restaurantId
//   FoodItemsPage({required this.restaurantId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart - $restaurantId'),  // Display restaurantId in the title
//       ),
//       body: Column(
//         children: [
//           // Cart items list
//           Consumer<CartProvider>(
//             builder: (context, cartProvider, child) {
//               return Expanded(
//                 child: ListView.builder(
//                   itemCount: cartProvider.cartItems.length,
//                   itemBuilder: (context, index) {
//                     final item = cartProvider.cartItems[index];
//                     return ListTile(
//                       title: Text(item.name),
//                       subtitle: Text('Price: \$${item.price} x ${item.quantity}'),
//                       trailing: Text('\$${item.price * item.quantity}'),
//                     );
//                   },
//                 ),
//               );
//             },
//           ),

//           // Fetch and display items from Firebase
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: StreamBuilder<QuerySnapshot>(
//               stream: FirebaseFirestore.instance
//                   .collection('restaurants')
//                   .doc(restaurantId)
//                   .collection('menu')
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(child: CircularProgressIndicator());
//                 }

//                 var items = snapshot.data!.docs;
//                 return Column(
//                   children: [
//                     // Display fetched menu items
//                     ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: items.length,
//                       itemBuilder: (context, index) {
//                         var item = items[index];
//                         return ListTile(
//                           leading: item['image'] != null && item['image'].isNotEmpty
//                               ? Image.network(item['image'], width: 50, height: 50, fit: BoxFit.cover)
//                               : Icon(Icons.fastfood),
//                           title: Text(item['name'] ?? "No Name"),
//                           subtitle: Text("\$${item['price'] ?? "N/A"}"),
//                           trailing: Consumer<CartProvider>(
//                             builder: (context, cartProvider, child) {
//                               var cartItem = cartProvider.cartItems
//                                   .firstWhere(
//                                     (cartItem) => cartItem.id == item.id,
//                                     orElse: () => CartItem(id: '', name: '', price: 0.0, quantity: 0),
//                                   );

//                               bool itemInCart = cartItem.id.isNotEmpty;

//                               return Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: [
//                                   if (itemInCart)
//                                     IconButton(
//                                       icon: Icon(Icons.remove),
//                                       onPressed: () {
//                                         cartProvider.updateQuantity(item.id, cartItem.quantity - 1);
//                                       },
//                                     ),
//                                   if (!itemInCart)
//                                     ElevatedButton(
//                                       onPressed: () {
//                                         cartProvider.addToCart(item.id, item['name'], item['price'].toDouble());
//                                       },
//                                       child: Text('Add to Cart'),
//                                     ),
//                                   if (itemInCart)
//                                     Text('${cartItem.quantity}'),
//                                   if (itemInCart)
//                                     IconButton(
//                                       icon: Icon(Icons.add),
//                                       onPressed: () {
//                                         cartProvider.updateQuantity(item.id, cartItem.quantity + 1);
//                                       },
//                                     ),
//                                 ],
//                               );
//                             },
//                           ),
//                         );
//                       },
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),

//           // Shipping Charge
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('Shipping Charge:'),
//                 DropdownButton<double>(
//                   value: Provider.of<CartProvider>(context).shippingCharge,
//                   items: [
//                     DropdownMenuItem(value: 5.0, child: Text('Standard - \$5')),
//                     DropdownMenuItem(value: 10.0, child: Text('Express - \$10')),
//                     DropdownMenuItem(value: 0.0, child: Text('Free')),
//                   ],
//                   onChanged: (newValue) {
//                     if (newValue != null) {
//                       Provider.of<CartProvider>(context, listen: false)
//                           .setShippingCharge(newValue);
//                     }
//                   },
//                 ),
//               ],
//             ),
//           ),

//           // Payment Method
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('Payment Method:'),
//                 DropdownButton<String>(
//                   value: Provider.of<CartProvider>(context).paymentMethod.isEmpty
//                       ? null
//                       : Provider.of<CartProvider>(context).paymentMethod,
//                   items: [
//                     DropdownMenuItem(value: 'Credit Card', child: Text('Credit Card')),
//                     DropdownMenuItem(value: 'Cash', child: Text('Cash on Delivery')),
//                   ],
//                   onChanged: (newValue) {
//                     if (newValue != null) {
//                       Provider.of<CartProvider>(context, listen: false)
//                           .setPaymentMethod(newValue);
//                     }
//                   },
//                 ),
//               ],
//             ),
//           ),

//           // Total amount and Checkout button
//           Consumer<CartProvider>(
//             builder: (context, cartProvider, child) {
//               return Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Total: \$${cartProvider.totalAmount.toStringAsFixed(2)}'),
//                     ElevatedButton(
//                       onPressed: () {
//                         if (cartProvider.paymentMethod.isEmpty) {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(content: Text('Please select a payment method.')));
//                           return;
//                         }

//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (_) => AddressFormPage()),
//                         );
//                       },
//                       child: Text('Proceed to Checkout'),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:agthia/User_pages/address.dart';
// import 'package:agthia/User_pages/cart_page.dart';
// import 'package:agthia/User_pages/cart_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class FoodItemsPage extends StatelessWidget {
//   final String restaurantId;

//   FoodItemsPage({required this.restaurantId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart - $restaurantId'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.shopping_cart),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => CartPage()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Consumer<CartProvider>(
//                     builder: (context, cartProvider, child) {
//                       return ListView.builder(
//                         shrinkWrap: true,
//                         physics: NeverScrollableScrollPhysics(),
//                         itemCount: cartProvider.cartItems.length,
//                         itemBuilder: (context, index) {
//                           final item = cartProvider.cartItems[index];
//                           return ListTile(
//                             title: Text(item.name),
//                             subtitle: Text('Price: \$${item.price} x ${item.quantity}'),
//                             trailing: Text('\$${item.price * item.quantity}'),
//                           );
//                         },
//                       );
//                     },
//                   ),

//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: StreamBuilder<QuerySnapshot>(
//                       stream: FirebaseFirestore.instance
//                           .collection('restaurants')
//                           .doc(restaurantId)
//                           .collection('menu')
//                           .snapshots(),
//                       builder: (context, snapshot) {
//                         if (!snapshot.hasData) {
//                           return Center(child: CircularProgressIndicator());
//                         }

//                         var items = snapshot.data!.docs;
//                         return ListView.builder(
//                           shrinkWrap: true,
//                           physics: NeverScrollableScrollPhysics(),
//                           itemCount: items.length,
//                           itemBuilder: (context, index) {
//                             var item = items[index];
//                             return ListTile(
//                               leading: item['image'] != null && item['image'].isNotEmpty
//                                   ? Image.network(item['image'], width: 50, height: 50, fit: BoxFit.cover)
//                                   : Icon(Icons.fastfood),
//                               title: Text(item['name'] ?? "No Name"),
//                               subtitle: Text("\$${item['price'] ?? "N/A"}"),
//                               trailing: Consumer<CartProvider>(
//                                 builder: (context, cartProvider, child) {
//                                   var cartItem = cartProvider.cartItems.firstWhere(
//                                     (cartItem) => cartItem.id == item.id,
//                                     orElse: () => CartItem(id: '', name: '', price: 0.0, quantity: 0),
//                                   );

//                                   bool itemInCart = cartItem.id.isNotEmpty;

//                                   return Row(
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
//                                       if (itemInCart)
//                                         IconButton(
//                                           icon: Icon(Icons.remove),
//                                           onPressed: () {
//                                             cartProvider.updateQuantity(item.id, cartItem.quantity - 1);
//                                           },
//                                         ),
//                                       if (!itemInCart)
//                                         ElevatedButton(
//                                           onPressed: () {
//                                             cartProvider.addToCart(item.id, item['name'], item['price'].toDouble());
//                                           },
//                                           child: Text('Add to Cart'),
//                                         ),
//                                       if (itemInCart) Text('${cartItem.quantity}'),
//                                       if (itemInCart)
//                                         IconButton(
//                                           icon: Icon(Icons.add),
//                                           onPressed: () {
//                                             cartProvider.updateQuantity(item.id, cartItem.quantity + 1);
//                                           },
//                                         ),
//                                     ],
//                                   );
//                                 },
//                               ),
//                             );
//                           },
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           // Padding(
//           //   padding: const EdgeInsets.all(16.0),
//           //   child: Column(
//           //     children: [
//           //       Row(
//           //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //         children: [
//           //           Text('Shipping Charge:'),
//           //           DropdownButton<double>(
//           //             value: Provider.of<CartProvider>(context).shippingCharge,
//           //             items: [
//           //               DropdownMenuItem(value: 5.0, child: Text('Standard - \$5')),
//           //               DropdownMenuItem(value: 10.0, child: Text('Express - \$10')),
//           //               DropdownMenuItem(value: 0.0, child: Text('Free')),
//           //             ],
//           //             onChanged: (newValue) {
//           //               if (newValue != null) {
//           //                 Provider.of<CartProvider>(context, listen: false).setShippingCharge(newValue);
//           //               }
//           //             },
//           //           ),
//           //         ],
//           //       ),

//           //       Row(
//           //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //         children: [
//           //           Text('Payment Method:'),
//           //           DropdownButton<String>(
//           //             value: Provider.of<CartProvider>(context).paymentMethod.isEmpty
//           //                 ? null
//           //                 : Provider.of<CartProvider>(context).paymentMethod,
//           //             items: [
//           //               DropdownMenuItem(value: 'Credit Card', child: Text('Credit Card')),
//           //               DropdownMenuItem(value: 'Cash', child: Text('Cash on Delivery')),
//           //             ],
//           //             onChanged: (newValue) {
//           //               if (newValue != null) {
//           //                 Provider.of<CartProvider>(context, listen: false).setPaymentMethod(newValue);
//           //               }
//           //             },
//           //           ),
//           //         ],
//           //       ),

//           //       Consumer<CartProvider>(
//           //         builder: (context, cartProvider, child) {
//           //           return Row(
//           //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //             children: [
//           //               Text('Total: \$${cartProvider.totalAmount.toStringAsFixed(2)}'),
//           //               ElevatedButton(
//           //                 onPressed: () {
//           //                   if (cartProvider.paymentMethod.isEmpty) {
//           //                     ScaffoldMessenger.of(context).showSnackBar(
//           //                       SnackBar(content: Text('Please select a payment method.')),
//           //                     );
//           //                     return;
//           //                   }
//           //                   Navigator.push(
//           //                     context,
//           //                     MaterialPageRoute(builder: (_) => AddressFormPage()),
//           //                   );
//           //                 },
//           //                 child: Text('Proceed to Checkout'),
//           //               ),
//           //             ],
//           //           );
//           //         },
//           //       ),
//           //     ],
//           //   ),
//           // ),
//           ElevatedButton(onPressed: (){
//             Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressFormPage()));
//           }, child: Text("Proceed to Checkout"))
//         ],
//       ),
//     );
//   }
// }


import 'package:agthia/User_pages/address.dart';
import 'package:agthia/User_pages/cart_page.dart';
import 'package:agthia/User_pages/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FoodItemsPage extends StatelessWidget {
  final String restaurantId;

  FoodItemsPage({required this.restaurantId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CartPage()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /// **Cart Items Display**
                  Consumer<CartProvider>(
                    builder: (context, cartProvider, child) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: cartProvider.cartItems.length,
                        itemBuilder: (context, index) {
                          final item = cartProvider.cartItems[index];
                          return Card(
                            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            elevation: 3,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.deepOrangeAccent,
                                child: Icon(Icons.fastfood, color: Colors.white),
                              ),
                              title: Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: Text('Price: \$${item.price} x ${item.quantity}', style: TextStyle(color: Colors.grey[600])),
                              trailing: Text(
                                '\$${(item.price * item.quantity).toStringAsFixed(2)}',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.deepOrange),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),

                  /// **Fetch & Display Menu from Firestore**
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('restaurants')
                          .doc(restaurantId)
                          .collection('menu')
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return Center(child: CircularProgressIndicator());
                        }

                        var items = snapshot.data!.docs;
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            var item = items[index];
                            return Card(
                              margin: EdgeInsets.only(bottom: 12),
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    /// **Food Image**
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: item['image'] != null && item['image'].isNotEmpty
                                          ? Image.network(item['image'], width: 70, height: 70, fit: BoxFit.cover)
                                          : Icon(Icons.fastfood, size: 50, color: Colors.deepOrange),
                                    ),
                                    SizedBox(width: 16),

                                    /// **Food Name & Price**
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(item['name'] ?? "No Name",
                                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                          SizedBox(height: 4),
                                          Text("\$${item['price'] ?? "N/A"}",
                                              style: TextStyle(color: Colors.deepOrange, fontSize: 14)),
                                        ],
                                      ),
                                    ),

                                    /// **Cart Actions (Add / Remove)**
                                    Consumer<CartProvider>(
                                      builder: (context, cartProvider, child) {
                                        var cartItem = cartProvider.cartItems.firstWhere(
                                          (cartItem) => cartItem.id == item.id,
                                          orElse: () => CartItem(id: '', name: '', price: 0.0, quantity: 0),
                                        );

                                        bool itemInCart = cartItem.id.isNotEmpty;

                                        return Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            if (itemInCart)
                                              IconButton(
                                                icon: Icon(Icons.remove_circle, color: Colors.redAccent),
                                                onPressed: () {
                                                  cartProvider.updateQuantity(item.id, cartItem.quantity - 1);
                                                },
                                              ),
                                            if (!itemInCart)
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.deepOrangeAccent,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  cartProvider.addToCart(item.id, item['name'], item['price'].toDouble());
                                                },
                                                child: Text('Add', style: TextStyle(color: Colors.white)),
                                              ),
                                            if (itemInCart)
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                child: Text('${cartItem.quantity}',
                                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                              ),
                                            if (itemInCart)
                                              IconButton(
                                                icon: Icon(Icons.add_circle, color: Colors.green),
                                                onPressed: () {
                                                  cartProvider.updateQuantity(item.id, cartItem.quantity + 1);
                                                },
                                              ),
                                          ],
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// **Proceed to Checkout Button**
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddressFormPage()));
              },
              child: Text(
                "Proceed to Checkout",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
