import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  static Future<void> addMenuItemsToFirestore(String restaurantId) async {
    List<Map<String, dynamic>> menuItems = [
      {
        'name': 'Classic Beef Burger',
        'price': 5.99,
        'image': 'https://example.com/classic_burger.jpg',
      },
      {
        'name': 'Cheese Burger',
        'price': 6.99,
        'image': 'https://example.com/cheese_burger.jpg',
      },
      {
        'name': 'Chicken Burger',
        'price': 5.49,
        'image': 'https://example.com/chicken_burger.jpg',
      },
      {
        'name': 'Veggie Burger',
        'price': 4.99,
        'image': 'https://example.com/veggie_burger.jpg',
      },
      {
        'name': 'Double Patty Burger',
        'price': 7.99,
        'image': 'https://example.com/double_patty_burger.jpg',
      },
      {
        'name': 'BBQ Bacon Burger',
        'price': 8.49,
        'image': 'https://example.com/bbq_bacon_burger.jpg',
      },
      {
        'name': 'Fries',
        'price': 2.99,
        'image': 'https://example.com/fries.jpg',
      },
      {
        'name': 'Coke',
        'price': 1.99,
        'image': 'https://example.com/coke.jpg',
      },
    ];

    CollectionReference menuRef = FirebaseFirestore.instance
        .collection('restaurants')
        .doc(restaurantId)
        .collection('menu');

    for (var item in menuItems) {
      await menuRef.add(item);
    }

    print('✅ Menu items added successfully!');
  }
}
