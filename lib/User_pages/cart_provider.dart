import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  List<Map<String, dynamic>> _cartItems = [];

  List<Map<String, dynamic>> get cartItems => _cartItems;

  double get totalAmount {
    double total = 0;
    _cartItems.forEach((item) {
      total += item['price'] * item['quantity'];
    });
    return total;
  }

  // Add item to cart
  void addToCart(String itemId, String itemName, double itemPrice) {
    bool itemExists = _cartItems.any((item) => item['id'] == itemId);
    if (itemExists) {
      _cartItems.firstWhere((item) => item['id'] == itemId)['quantity']++;
    } else {
      _cartItems.add({
        'id': itemId,
        'name': itemName,
        'price': itemPrice,
        'quantity': 1,
      });
    }
    notifyListeners();
  }

  // Remove item from cart
  void removeFromCart(String itemId) {
    _cartItems.removeWhere((item) => item['id'] == itemId);
    notifyListeners();
  }

  // Update quantity
  void updateQuantity(String itemId, int quantity) {
    if (quantity <= 0) {
      removeFromCart(itemId);
    } else {
      _cartItems.firstWhere((item) => item['id'] == itemId)['quantity'] = quantity;
      notifyListeners();
    }
  }

  // Clear the cart
  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
