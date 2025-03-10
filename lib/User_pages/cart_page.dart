
import 'package:agthia/User_pages/address.dart';
import 'package:agthia/User_pages/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:agthia/provider/cartprovider.dart';


class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, _) {
          if (cartProvider.cartItems.isEmpty) {
            return Center(child: Text('Your cart is empty.'));
          }

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: cartProvider.cartItems.length,
                  itemBuilder: (context, index) {
                    var item = cartProvider.cartItems[index];
                    return ListTile(
                      leading: Icon(Icons.fastfood),
                      title: Text(item['name']),
                      subtitle: Text("\$${item['price']} x ${item['quantity']}"),
                      trailing: IconButton(
                        icon: Icon(Icons.remove_circle),
                        onPressed: () {
                          cartProvider.removeFromCart(item['id']);
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text('Total: \$${cartProvider.totalAmount.toStringAsFixed(2)}'),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the address form page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => AddressFormPage()),
                        );
                      },
                      child: Text('Proceed to Checkout'),
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
