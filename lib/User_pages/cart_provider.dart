// import 'package:flutter/material.dart';

// class CartProvider with ChangeNotifier {
//   List<Map<String, dynamic>> _cartItems = [];

//   List<Map<String, dynamic>> get cartItems => _cartItems;

//   double get totalAmount {
//     double total = 0;
//     _cartItems.forEach((item) {
//       total += item['price'] * item['quantity'];
//     });
//     return total;
//   }

//   // Add item to cart
//   void addToCart(String itemId, String itemName, double itemPrice) {
//     bool itemExists = _cartItems.any((item) => item['id'] == itemId);
//     if (itemExists) {
//       _cartItems.firstWhere((item) => item['id'] == itemId)['quantity']++;
//     } else {
//       _cartItems.add({
//         'id': itemId,
//         'name': itemName,
//         'price': itemPrice,
//         'quantity': 1,
//       });
//     }
//     notifyListeners();
//   }

//   // Remove item from cart
//   void removeFromCart(String itemId) {
//     _cartItems.removeWhere((item) => item['id'] == itemId);
//     notifyListeners();
//   }

//   // Update quantity
//   void updateQuantity(String itemId, int quantity) {
//     if (quantity <= 0) {
//       removeFromCart(itemId);
//     } else {
//       _cartItems.firstWhere((item) => item['id'] == itemId)['quantity'] = quantity;
//       notifyListeners();
//     }
//   }

//   // Clear the cart
//   void clearCart() {
//     _cartItems.clear();
//     notifyListeners();
//   }
// }


// import 'package:flutter/material.dart';
// class CartItem {
//   final String id;
//   final String name;
//   final double price;
//   int quantity;

//   CartItem({
//     required this.id,
//     required this.name,
//     required this.price,
//     required this.quantity,
//   });

//   // Convert CartItem to a Map
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'price': price,
//       'quantity': quantity,
//     };
//   }
// }

// class CartProvider with ChangeNotifier {
//   List<CartItem> _cartItems = [];

//   List<CartItem> get cartItems => _cartItems;

//   double get totalAmount {
//     return _cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));
//   }

//   void addToCart(String id, String name, double price) {
//     int index = _cartItems.indexWhere((item) => item.id == id);

//     if (index >= 0) {
//       // If the item is already in the cart, increment the quantity
//       _cartItems[index].quantity++;
//     } else {
//       // If the item is not in the cart, add it with quantity 1
//       _cartItems.add(CartItem(id: id, name: name, price: price, quantity: 1));
//     }
//     notifyListeners();
//   }

//   void removeItem(CartItem item) {
//     _cartItems.removeWhere((cartItem) => cartItem.id == item.id);
//     notifyListeners();
//   }

//   void updateQuantity(String id, int newQuantity) {
//     int index = _cartItems.indexWhere((item) => item.id == id);
//     if (index >= 0 && newQuantity > 0) {
//       _cartItems[index].quantity = newQuantity;
//     } else if (index >= 0 && newQuantity == 0) {
//       _cartItems.removeAt(index); // Remove item if quantity is 0
//     }
//     notifyListeners();
//   }

//   void clearCart() {
//     _cartItems.clear();
//     notifyListeners();
//   }
// }


import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String name;
  final double price;
  int quantity;

  CartItem({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
  });

  // Convert CartItem to a Map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'quantity': quantity,
    };
  }
}

class CartProvider with ChangeNotifier {
  List<CartItem> _cartItems = [];
  String _paymentMethod = '';  
  double _shippingCharge = 0.0; 

  // Getters
  List<CartItem> get cartItems => _cartItems;
  String get paymentMethod => _paymentMethod;
  double get shippingCharge => _shippingCharge;

  // Updated to return double
  double get totalAmount {
    return _cartItems.fold(0.0, (sum, item) => sum + (item.price * item.quantity)) + _shippingCharge;
  }

  // Add item to cart
  void addToCart(String id, String name, double price) {
    int index = _cartItems.indexWhere((item) => item.id == id);
    if (index >= 0) {
      _cartItems[index].quantity++;
    } else {
      _cartItems.add(CartItem(id: id, name: name, price: price, quantity: 1));
    }
    notifyListeners();
  }

  // Remove item from cart
  void removeItem(CartItem item) {
    _cartItems.removeWhere((cartItem) => cartItem.id == item.id);
    notifyListeners();
  }

  // Update item quantity
  void updateQuantity(String id, int newQuantity) {
    int index = _cartItems.indexWhere((item) => item.id == id);
    if (index >= 0 && newQuantity > 0) {
      _cartItems[index].quantity = newQuantity;
    } else if (index >= 0 && newQuantity == 0) {
      _cartItems.removeAt(index);
    }
    notifyListeners();
  }

  // Clear cart
  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }

  // Set payment method
  void setPaymentMethod(String method) {
    _paymentMethod = method;
    notifyListeners();
  }

  // Set shipping charge
  void setShippingCharge(double charge) {
    _shippingCharge = charge;
    notifyListeners();
  }
}
