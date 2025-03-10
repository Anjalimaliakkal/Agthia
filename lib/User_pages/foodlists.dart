
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
      appBar: AppBar(
        title: Text('Menu'),
        actions: [
          Consumer<CartProvider>(
            builder: (context, cartProvider, child) {
              return Stack(
                children: [
                  IconButton(
                    icon: Icon(Icons.shopping_cart, size: 28),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => CartPage()),
                      );
                    },
                  ),
                  if (cartProvider.cartItems.isNotEmpty)
                    Positioned(
                      right: 8,
                      top: 8,
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          cartProvider.cartItems.length.toString(),
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
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
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    var item = items[index];
                    return Card(
                      elevation: 4,
                      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: item['image'] != null && item['image'].isNotEmpty
                              ? Image.network(item['image'], width: 60, height: 60, fit: BoxFit.cover)
                              : Icon(Icons.fastfood, size: 40),
                        ),
                        title: Text(item['name'] ?? "No Name", style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text("\$${item['price'] ?? "N/A"}", style: TextStyle(color: Colors.green, fontSize: 16)),
                        trailing: Consumer<CartProvider>(
                          builder: (context, cartProvider, child) {
                            var cartItem = cartProvider.cartItems.firstWhere(
                                (cartItem) => cartItem['id'] == item.id,
                                orElse: () => {});
                            bool itemInCart = cartItem.isNotEmpty;

                            return Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (itemInCart)
                                  IconButton(
                                    icon: Icon(Icons.remove_circle, color: Colors.red),
                                    onPressed: () {
                                      cartProvider.updateQuantity(item.id, cartItem['quantity'] - 1);
                                    },
                                  ),
                                if (!itemInCart)
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                                    onPressed: () {
                                      cartProvider.addToCart(item.id, item['name'], item['price'].toDouble());
                                    },
                                    child: Text('Add'),
                                  ),
                                if (itemInCart)
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text('${cartItem['quantity']}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                  ),
                                if (itemInCart)
                                  IconButton(
                                    icon: Icon(Icons.add_circle, color: Colors.green),
                                    onPressed: () {
                                      cartProvider.updateQuantity(item.id, cartItem['quantity'] + 1);
                                    },
                                  ),
                              ],
                            );
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Consumer<CartProvider>(
            builder: (context, cartProvider, child) {
              return Visibility(
                visible: cartProvider.totalAmount > 0,
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, -3)),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total: \$${cartProvider.totalAmount.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          textStyle: TextStyle(fontSize: 16),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => AddressFormPage()),
                          );
                        },
                        child: Text('Checkout'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

