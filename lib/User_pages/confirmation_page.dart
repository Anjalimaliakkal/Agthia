import 'package:agthia/User_pages/About.dart';
import 'package:agthia/User_pages/brandspage.dart';
import 'package:agthia/User_pages/carreerpage.dart';
import 'package:agthia/User_pages/contactus.dart';
import 'package:agthia/User_pages/homescreen.dart';
import 'package:agthia/User_pages/mediapage.dart';
import 'package:agthia/User_pages/mission.dart';
import 'package:agthia/User_pages/ourpeople.dart';
import 'package:agthia/User_pages/user_changepassword.dart';
import 'package:agthia/User_pages/words_from_chairman.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ConfirmationPage extends StatelessWidget {
  final String orderId;

  ConfirmationPage({required this.orderId});

  @override
  Widget build(BuildContext context) {
    print("🔍 Fetching order details for Order ID: $orderId");

    return Scaffold(
      appBar: AppBar( title: Center(
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
                  "User",
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
                        builder: (context) => UserChangepassword()));
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
                  "User",
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
            drawer: Drawer(
          width: 200,
          backgroundColor: Color(0xFF282d37),
          child: ListView(
            padding: EdgeInsets.all(12),
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Color(0xFF282d37)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "User",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Text("Home",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homescreen()));
                },
              ),
              ExpansionTile(
                //tilePadding: const EdgeInsets.only(left: 15, right: 15),
                title: Text(
                  "About us",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                children: [
                  ListTile(
                    title: Text(
                      "About",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => About()));
                    },
                    contentPadding: EdgeInsets.only(left: 60),
                  ),
                  ListTile(
                    title: Text(
                      "Our People",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Ourpeople()));
                    },
                    contentPadding: EdgeInsets.only(left: 60),
                  ),
                  ListTile(
                    title: Text(
                      "Mission/Vision",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mission()));
                    },
                    contentPadding: EdgeInsets.only(left: 60),
                  ),
                  ListTile(
                    title: Text(
                      "Word from Chairman",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WordsFromChairman()));
                    },
                    contentPadding: EdgeInsets.only(left: 60),
                  ),
                ],
              ),
              ListTile(
                title: Text("Brands",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Brandspage()));
                },
              ),
              ListTile(
                title: Text("My orders",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
     onTap: () async {
  // Fetch the latest order from Firestore (Modify if needed)
  var orderSnapshot = await FirebaseFirestore.instance
      .collection('orders')
      .orderBy('timestamp', descending: true) // Sort by latest
      .limit(2)
      .get();

  if (orderSnapshot.docs.isNotEmpty) {
    String orderId = orderSnapshot.docs.first.id; // Get the actual order ID

    print("📢 Navigating to Confirmation Page with orderId: $orderId");

   Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => ConfirmationPage(orderId: orderId)), // Use dynamic ID
);
  } else {
    print("❌ No orders found in Firestore!");
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('No orders found. Please place an order first!')),
    );
  }
},

              ),
              ListTile(
                title: Text("Media",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Mediapage()));
                },
              ),
              ListTile(
                title: Text("Carrier",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Carreerpage()));
                },
              ),
              ListTile(
                title: Text("Contact us",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Contactus()));
                },
              ),
            ],
          ),
        ),
      // body: FutureBuilder<DocumentSnapshot>(
      //   future: FirebaseFirestore.instance.collection('orders').doc(orderId).get(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return Center(child: CircularProgressIndicator());
      //     }

      //     if (snapshot.hasError) {
      //       print("❌ Firestore Error: ${snapshot.error}");
      //       return Center(child: Text('Error fetching order details.'));
      //     }

      //     if (!snapshot.hasData || !snapshot.data!.exists) {
      //       print("❌ Order not found in Firestore with ID: $orderId");
      //       return Center(child: Text('Order not found.'));
      //     }

      //     var orderData = snapshot.data!.data() as Map<String, dynamic>;
      //     print("📜 Firestore Data for Order ID $orderId: $orderData");

      //     return Padding(
      //       padding: const EdgeInsets.all(16.0),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Center(child: Text("Order Confirmation",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 28),)),
      //           Text('Order ID: $orderId', style: TextStyle(fontWeight: FontWeight.bold)),
      //           Text('Name: ${orderData['name'] ?? 'Unknown'}'),
      //           Text('Phone: ${orderData['phone'] ?? 'Unknown'}'),
      //           Text('Address: ${orderData['address'] ?? 'Unknown'}'),
      //           Text('Orderd Items: ${orderData['cartItems'] ?? 'Unknown'}'),
      //           SizedBox(height: 20),
      //           Text(
      //             orderData['status'] == 'Approved' ? 'Your order has been approved! 🎉' : 'Your order is pending.',
      //             style: TextStyle(fontSize: 16, color: orderData['status'] == 'Approved' ? Colors.green : Colors.orange),
      //           ),
      //         ],
      //       ),
      //     );
      //   },
      // ),
      body: FutureBuilder<DocumentSnapshot>(
        future: FirebaseFirestore.instance.collection('orders').doc(orderId).get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            print("❌ Firestore Error: ${snapshot.error}");
            return Center(child: Text('Error fetching order details.'));
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            print("❌ Order not found in Firestore with ID: $orderId");
            return Center(child: Text('Order not found.'));
          }

          var orderData = snapshot.data!.data() as Map<String, dynamic>;
          print("📜 Firestore Data for Order ID $orderId: $orderData");

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Order Confirmation",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                      ),
                      Divider(thickness: 1, height: 20),
            
                      ListTile(
                        leading: Icon(Icons.receipt_long, color: Colors.green),
                        title: RichText(
                          text: TextSpan(
                            text: "Order ID: ",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                            children: [
                              TextSpan(
                                text: orderId,
                                style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey[700]),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.person, color: Colors.blue),
                        title: Text("Name: ${orderData['name'] ?? 'Unknown'}"),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone, color: Colors.teal),
                        title: Text("Phone: ${orderData['phone'] ?? 'Unknown'}"),
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on, color: Colors.red),
                        title: Text("Address: ${orderData['address'] ?? 'Unknown'}"),
                      ),
                      ListTile(
                        leading: Icon(Icons.shopping_cart, color: Colors.orange),
                        title: Text("Ordered Items: ${orderData['cartItems'] ?? 'Unknown'}"),
                      ),
                      SizedBox(height: 20),
            
                      Center(
                        child: Text(
                          orderData['status'] == 'Approved'
                              ? '🎉 Your order has been approved!'
                              : '⏳ Your order is pending.',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: orderData['status'] == 'Approved' ? Colors.green : Colors.orange,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
            
                      if (orderData['status'] == 'Approved')
                        Center(
                          child: Icon(Icons.check_circle, color: Colors.green, size: 40),
                        )
                      else
                        Center(
                          child: Icon(Icons.hourglass_top, color: Colors.orange, size: 40),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
