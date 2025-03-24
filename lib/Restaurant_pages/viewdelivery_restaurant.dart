import 'package:agthia/Restaurant_pages/Add_Restaurant.dart';
import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
import 'package:agthia/Restaurant_pages/delivery_allocation.dart';
import 'package:agthia/Restaurant_pages/restaurant_home.dart';
import 'package:agthia/Restaurant_pages/view_approved_orders.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewdeliveryRestaurant extends StatelessWidget {
  const ViewdeliveryRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        //leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),
        title: Center(
          child: Transform.translate(
            offset: Offset(12.0, 0.0),
            child: Image.asset(
              'asset/logo_agthia.jpg',
              height: 43, // Adjust height based on your design
              fit: BoxFit.contain, // Ensures the image fits well
            ),
          ),
        ),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
                // Perform logout action
              }
            },
            itemBuilder: (BuildContext context) => [
              // Title Item (Non-clickable)
              PopupMenuItem<String>(
                enabled: false,
                child: Text(
                  "RESTAURANT",
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
        // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],

      ),
      backgroundColor: const Color.fromARGB(255, 189, 195, 181),
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
                    "Restaurant",
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
                    MaterialPageRoute(builder: (context) => RestaurantHome()));
              },
            ),
             ListTile(
              title: Text("Add Restaurant",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddRestaurant()));
              },
            ),
            // ListTile(
            //   title: Text("View Orders",
            //       style: TextStyle(
            //           fontWeight: FontWeight.bold, color: Colors.white)),
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => RestaurantVieworders()));
            //   },
            // ),
            ListTile(
              title: Text("View Delivery Personnel",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewdeliveryRestaurant()));
              },
            ),
            // ListTile(
            //   title: Text("Allocate Delivery Personnel",
            //       style: TextStyle(
            //           fontWeight: FontWeight.bold, color: Colors.white)),
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => DeliveryAllocation(orderId: '',)));
            //   },
            // ),
          ],
        ),
      ),
     
      body: StreamBuilder<QuerySnapshot>(
  stream: FirebaseFirestore.instance
      .collection('delivery_boys')
      .orderBy('updatedAt', descending: true) // Order by date
      .snapshots(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return Center(child: CircularProgressIndicator());
    }

    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
      return Center(child: Text("No Delivery Personnels found."));
    }

    var delivery_boys = snapshot.data!.docs;
    return ListView.builder(
      itemCount: delivery_boys.length,
      itemBuilder: (context, index) {
        var deliveryBoys = delivery_boys[index];
        String name = deliveryBoys['name'] ?? 'No Name';
        String email = deliveryBoys['email'] ?? 'No email';
        String phone = deliveryBoys['phone']?.toString() ?? 'No Phone number';
        //String license = deliveryBoys['license']?.toString() ?? 'No license number';
       

        // String menuItems = restaurant['menuItems'] ?? 'No menuitems';
        // String locations = restaurant['locations'] ?? 'No locations';
        String status = deliveryBoys['status'] ?? 'No status';
        Timestamp? timestamp = deliveryBoys['updatedAt'] as Timestamp?;
        String date = timestamp != null ? timestamp.toDate().toString() : 'No Date Available';

        return Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          elevation: 3,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Delivery Personnel Name: $name", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 10,),
                Text("Email : $email",),
                SizedBox(height: 10,),
                Text("Phone No: $phone"),
                SizedBox(height: 10,),
                //Text("license No: $license"),
                //SizedBox(height: 10,),
                
               
                Text("Status: $status"),
                SizedBox(height: 10,),
                Text("Date: $date"),
                
              ],
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
