
// import 'package:agthia/User_pages/address.dart';
// import 'package:agthia/User_pages/cart_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// //import 'package:agthia/provider/cartprovider.dart';


// class CartPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Cart')),
//       body: Consumer<CartProvider>(
//         builder: (context, cartProvider, _) {
//           if (cartProvider.cartItems.isEmpty) {
//             return Center(child: Text('Your cart is empty.'));
//           }

//           return Column(
//             children: [
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: cartProvider.cartItems.length,
//                   itemBuilder: (context, index) {
//                     var item = cartProvider.cartItems[index];
//                     return ListTile(
//                       leading: Icon(Icons.fastfood),
//                       title: Text(item['name']),
//                       subtitle: Text("\$${item['price']} x ${item['quantity']}"),
//                       trailing: IconButton(
//                         icon: Icon(Icons.remove_circle),
//                         onPressed: () {
//                           cartProvider.removeFromCart(item['id']);
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   children: [
//                     Text('Total: \$${cartProvider.totalAmount.toStringAsFixed(2)}'),
//                     SizedBox(height: 10),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Navigate to the address form page
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (_) => AddressFormPage()),
//                         );
//                       },
//                       child: Text('Proceed to Checkout'),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
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

// class CartPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Cart')),
//       body: Consumer<CartProvider>(
//         builder: (context, cartProvider, _) {
//           if (cartProvider.cartItems.isEmpty) {
//             return Center(
//               child: Text(
//                 'Your cart is empty.',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//               ),
//             );
//           }

//           return Column(
//             children: [
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: cartProvider.cartItems.length,
//                   itemBuilder: (context, index) {
//                     CartItem item = cartProvider.cartItems[index]; // Use CartItem object

//                     return Card(
//                       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                       child: ListTile(
//                         leading: Icon(Icons.fastfood, color: Colors.orange),
//                         title: Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
//                         subtitle: Text("\$${item.price.toStringAsFixed(2)} x ${item.quantity}"),
//                         trailing: IconButton(
//                           icon: Icon(Icons.remove_circle, color: Colors.red),
//                           onPressed: () {
//                             cartProvider.removeItem(item); // Pass the CartItem object
//                           },
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   children: [
//                     Text(
//                       'Total: \$${cartProvider.totalAmount.toStringAsFixed(2)}',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 10),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                         backgroundColor: Colors.green,
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (_) => AddressFormPage()),
//                         );
//                       },
//                       child: Text('Proceed to Checkout', style: TextStyle(fontSize: 16)),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:agthia/User_pages/address.dart';
import 'package:agthia/User_pages/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        // title: Text('Your Cart'),
        // backgroundColor: Colors.green,
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, _) {
          if (cartProvider.cartItems.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Image.asset('assets/empty_cart.png', height: 150),
                  SizedBox(height: 20),
                  Text(
                    'Your cart is empty!',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Add items to your cart to continue shopping.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
            );
          }

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: cartProvider.cartItems.length,
                  itemBuilder: (context, index) {
                    CartItem item = cartProvider.cartItems[index];

                    return Card(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      elevation: 3,
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        leading: Icon(Icons.fastfood, color: Colors.orange, size: 35),
                        title: Text(
                          item.name,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        subtitle: Text(
                          "\$${item.price.toStringAsFixed(2)} x ${item.quantity}",
                          style: TextStyle(color: Colors.black54),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove_circle, color: Colors.redAccent),
                              onPressed: () {
                                cartProvider.updateQuantity(item.id, item.quantity - 1);
                              },
                            ),
                            Text(
                              '${item.quantity}',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            IconButton(
                              icon: Icon(Icons.add_circle, color: Colors.green),
                              onPressed: () {
                                cartProvider.updateQuantity(item.id, item.quantity + 1);
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total:',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$${cartProvider.totalAmount.toStringAsFixed(2)}',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => AddressFormPage()));
                        },
                        child: Text(
                          'Proceed to Checkout',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
