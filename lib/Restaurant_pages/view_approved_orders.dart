import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'delivery_allocation.dart'; // Import the allocation screen

class ViewApprovedOrders extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Approved Orders')),
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
          PopupMenuButton<String>(
            child: Row(
              children: [
                CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 188, 187, 187),
                    child: Icon(Icons.person,
                        color: Colors.white)), // Profile Icon
                SizedBox(width: 5),
                Text(
                  "RESTAURANT",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onSelected: (value) {
              if (value == 'change_password') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RestaurantChangepassword()));
                // Navigate to change password screen
              } else if (value == 'logout') {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginPage()));
                // Perform logout action
              }
            },
            itemBuilder: (BuildContext context) => [
              // Title Item (Non-clickable)
              PopupMenuItem<String>(
                enabled: false,
                child: Text(
                  "Restaurant",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              PopupMenuDivider(),

              // Change Password
              PopupMenuItem<String>(
                value: 'change_password',
                child: Row(
                  children: [
                    Icon(Icons.lock, color: Colors.black),
                    SizedBox(width: 10),
                    Text("Change Password"),
                  ],
                ),
              ),

              // Logout
              PopupMenuItem<String>(
                value: 'logout',
                child: Row(
                  children: [
                    Icon(Icons.logout, color: Colors.black),
                    SizedBox(width: 10),
                    Text("Logout"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _firestore
            .collection('orders')
            .where('status', isEqualTo: 'Approved') // Fetch only Approved orders
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Something went wrong: ${snapshot.error}"));
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('No approved orders available.'));
          }

          var orders = snapshot.data!.docs;

          return ListView.builder(
            itemCount: orders.length,
            itemBuilder: (context, index) {
              var order = orders[index];
              var orderId = order.id; // Get the orderId

              return Card(
                elevation: 3,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  title: Text(order['name'] ?? 'Unknown Order', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Status: ${order['status'] ?? 'Not Available'}'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DeliveryAllocation(orderId: orderId),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DeliveryAllocation extends StatefulWidget {
  final String orderId;
  DeliveryAllocation({required this.orderId, Key? key}) : super(key: key);

  @override
  _DeliveryAllocationState createState() => _DeliveryAllocationState();
}

class _DeliveryAllocationState extends State<DeliveryAllocation> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Function to assign a delivery boy to an order
  Future<void> assignDeliveryBoy(String deliveryBoyId) async {
    try {
      print("Assigning delivery boy: $deliveryBoyId to order: ${widget.orderId}");

      // Fetch order details
      DocumentSnapshot orderSnapshot =
          await _firestore.collection('orders').doc(widget.orderId).get();

      if (!orderSnapshot.exists) {
        print("Error: Order not found!");
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Order not found!')));
        return;
      }

      Map<String, dynamic> orderData = orderSnapshot.data() as Map<String, dynamic>;

      if (orderData['status'] != 'Approved') {
        print("Error: Order is not approved!");
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Order not approved!')));
        return;
      }

      // Fetch delivery boy details
      DocumentSnapshot deliveryBoySnapshot =
          await _firestore.collection('delivery_boys').doc(deliveryBoyId).get();

      if (!deliveryBoySnapshot.exists) {
        print("Error: Delivery boy not found!");
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Delivery boy not found!')));
        return;
      }

      Map<String, dynamic> deliveryBoyData =
          deliveryBoySnapshot.data() as Map<String, dynamic>;

      if (deliveryBoyData['status'] != 'active' || deliveryBoyData['availability'] != 'available') {
        print("Error: Delivery boy is not available!");
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Delivery boy is not available!')));
        return;
      }

      // Assign delivery boy and update order status
      await _firestore.collection('orders').doc(widget.orderId).update({
        'assignedDeliveryBoyId': deliveryBoyId,
        'status': 'Out for Delivery',
      });

      // Update delivery boy's availability to 'busy'
      await _firestore.collection('delivery_boys').doc(deliveryBoyId).update({
        'availability': 'busy',
      });

      print("Success: Delivery boy assigned!");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Delivery boy assigned!')));
      Navigator.pop(context); // Go back after assignment
    } catch (e) {
      print("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Something went wrong!')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Assign Delivery Boy')),
      body: StreamBuilder<QuerySnapshot>(
        stream: _firestore
            .collection('delivery_boys')
            .where('availability', isEqualTo: 'available')
            .where('status', isEqualTo: 'active')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Something went wrong: ${snapshot.error}"));
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('No available delivery boys.'));
          }

          var deliveryBoys = snapshot.data!.docs;


          return ListView.builder(
            itemCount: deliveryBoys.length,
            itemBuilder: (context, index) {
              var deliveryBoy = deliveryBoys[index];

              return Card(
                elevation: 3,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  title: Text(deliveryBoy['name'], style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(deliveryBoy['email']),
                  trailing: ElevatedButton(
                    onPressed: () {
                      assignDeliveryBoy(deliveryBoy.id);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Text('Assign', style: TextStyle(color: Colors.white)),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
