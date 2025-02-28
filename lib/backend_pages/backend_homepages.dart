import 'package:agthia/Admin_pages/admin_home.dart';
import 'package:agthia/DeliveryPersonnel_pages/delivery_home.dart';
import 'package:agthia/Restaurant_pages/restaurant_home.dart';
import 'package:agthia/User_pages/homescreen.dart';
import 'package:flutter/material.dart';

// class AdminHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(body: Center(child: Text('Admin Dashboard')));
// }

class UserHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(body: Center(child: Text('User Dashboard')));
}

// class DeliveryHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(body: Center(child: Text('Delivery Boy Dashboard')));

// }

// class RestaurantHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(body: Center(child: Text('Restaurant Dashboard')));
// }

// Function to navigate based on role
Widget getHomePage(String role) {
  switch (role) {
    case 'admin': return AdminHome();
    case 'user': return Homescreen();
    case 'deliveryboy': return DeliveryHome();
    case 'restaurant': return RestaurantHome();
    default: return Homescreen();
  }
}
