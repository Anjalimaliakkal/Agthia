
// import 'package:agthia/Restaurant_pages/Add_Restaurant.dart';
// import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
// import 'package:agthia/Restaurant_pages/Restaurant_viewdelivery.dart';
// import 'package:agthia/Restaurant_pages/Restaurant_vieworders.dart';
// import 'package:agthia/Restaurant_pages/delivery_allocation.dart';
// import 'package:agthia/Restaurant_pages/restaurant_home.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class ViewReservations extends StatelessWidget {
//   const ViewReservations({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.white),
//         //leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),
//         title: Center(
//           child: Transform.translate(
//             offset: Offset(12.0, 0.0),
//             child: Image.asset(
//               'asset/logo_agthia.jpg',
//               height: 43, // Adjust height based on your design
//               fit: BoxFit.contain, // Ensures the image fits well
//             ),
//           ),
//         ),
//         backgroundColor: Color(0xFF282d37),
//         actions: [
//           PopupMenuButton<String>(
//             child: Row(
//               children: [
//                 CircleAvatar(
//                     backgroundColor: const Color.fromARGB(255, 188, 187, 187),
//                     child: Icon(Icons.person,
//                         color: Colors.white)), // Profile Icon
//                 SizedBox(width: 5),
//                 Text(
//                   "RESTAURANT",
//                   style: TextStyle(
//                       color: Colors.white, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(width: 5),
//                 Icon(Icons.arrow_drop_down)
//               ],
//             ),
//             onSelected: (value) {
//               if (value == 'change_password') {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => RestaurantChangepassword()));
//                 // Navigate to change password screen
//               } else if (value == 'logout') {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => LoginPage()));
//                 // Perform logout action
//               }
//             },
//             itemBuilder: (BuildContext context) => [
//               // Title Item (Non-clickable)
//               PopupMenuItem<String>(
//                 enabled: false,
//                 child: Text(
//                   "RESTAURANT",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//               PopupMenuDivider(),

//               // Change Password
//               PopupMenuItem<String>(
//                 value: 'change_password',
//                 child: Row(
//                   children: [
//                     Icon(Icons.lock, color: Colors.black),
//                     SizedBox(width: 10),
//                     Text("Change Password"),
//                   ],
//                 ),
//               ),

//               // Logout
//               PopupMenuItem<String>(
//                 value: 'logout',
//                 child: Row(
//                   children: [
//                     Icon(Icons.logout, color: Colors.black),
//                     SizedBox(width: 10),
//                     Text("Logout"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(width: 10),
//         ],
//         // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],

//       ),
//       backgroundColor: const Color.fromARGB(255, 189, 195, 181),
//            drawer: Drawer(
//         width: 200,
//         backgroundColor: Color(0xFF282d37),
//         child: ListView(
//           padding: EdgeInsets.all(12),
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(color: Color(0xFF282d37)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Colors.white,
//                     child: Icon(Icons.person),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     "Restaurant",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   )
//                 ],
//               ),
//             ),
//             ListTile(
//               title: Text("Home",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => RestaurantHome()));
//               },
//             ),
//              ListTile(
//               title: Text("Add Restaurant",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => AddRestaurant()));
//               },
//             ),
//             ListTile(
//               title: Text("View Orders",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => RestaurantVieworders()));
//               },
//             ),
//             ListTile(
//               title: Text("View Delivery Personnel",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => RestaurantViewdelivery()));
//               },
//             ),
//             ListTile(
//               title: Text("Allocate Delivery Personnel",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => DeliveryAllocation(orderId: '',)));
//               },
//             ),
//           ],
//         ),
//       ),
     
//       body: StreamBuilder<QuerySnapshot>(
//   stream: FirebaseFirestore.instance
//       .collection('reservations')
//       .orderBy('timestamp', descending: true) // Order by date
//       .snapshots(),
//   builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//       return Center(child: CircularProgressIndicator());
//     }

//     if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//       return Center(child: Text("No Reservations found."));
//     }

//     var reservations = snapshot.data!.docs;
//     return ListView.builder(
//       itemCount: reservations.length,
//       itemBuilder: (context, index) {
//         var reservation = reservations[index];
//         String name = reservation['name'] ?? 'No Name';
//         String location = reservation['location'] ?? 'No location';
//         String seats = reservation['seats']?.toString() ?? 'No seats';
//        //String menuItems = (reservation['menuItems'] as List?)?.join(", ") ?? 'No menuitems';

//         // String menuItem = reservation['menuItem'] ?? 'No menuitems';
//         // String locations = restaurant['locations'] ?? 'No locations';
//         //String status = deliveryBoys['status'] ?? 'No status';
//         Timestamp? timestamp = reservation['timestamp'] as Timestamp?;
//         String date = timestamp != null ? timestamp.toDate().toString() : 'No Date Available';

//         return Card(
//           margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//           elevation: 3,
//           child: Padding(
//             padding: EdgeInsets.all(10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Reserved Person Name: $name", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                 SizedBox(height: 10,),
//                 Text("Restaurant Name : $location",),
//                 SizedBox(height: 10,),
//                // Text("Menu Items: $menuItems"),
//                 //SizedBox(height: 10,),
//                 Text("Number of Reserved Seats: $seats"),
//                 SizedBox(height: 10,),
                
               
//                 //Text("Status: $status"),
//                 SizedBox(height: 10,),
//                 Text("Date: $date"),
                
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   },
// ),

//     );
//   }
// }


import 'package:agthia/Restaurant_pages/Add_Restaurant.dart';
import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
import 'package:agthia/Restaurant_pages/Restaurant_viewdelivery.dart';
import 'package:agthia/Restaurant_pages/Restaurant_vieworders.dart';
import 'package:agthia/Restaurant_pages/delivery_allocation.dart';
import 'package:agthia/Restaurant_pages/restaurant_home.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewReservations extends StatelessWidget {
  const ViewReservations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Center(
          child: Transform.translate(
            offset: Offset(12.0, 0.0),
            child: Image.asset(
              'asset/logo_agthia.jpg',
              height: 43,
              fit: BoxFit.contain,
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
                    child: Icon(Icons.person, color: Colors.white)),
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
              } else if (value == 'logout') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                enabled: false,
                child: Text(
                  "RESTAURANT",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              PopupMenuDivider(),
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
      backgroundColor: const Color.fromARGB(255, 189, 195, 181),
      // drawer: Drawer(
      //   width: 200,
      //   backgroundColor: Color(0xFF282d37),
      //   child: ListView(
      //     padding: EdgeInsets.all(12),
      //     children: [
      //       DrawerHeader(
      //         decoration: BoxDecoration(color: Color(0xFF282d37)),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             CircleAvatar(
      //               radius: 30,
      //               backgroundColor: Colors.white,
      //               child: Icon(Icons.person),
      //             ),
      //             SizedBox(height: 7),
      //             Text(
      //               "Restaurant",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.white),
      //             )
      //           ],
      //         ),
      //       ),
      //       ListTile(
      //         title: Text("Home", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      //         onTap: () {
      //           Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantHome()));
      //         },
      //       ),
      //       ListTile(
      //         title: Text("Add Restaurant", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      //         onTap: () {
      //           Navigator.push(context, MaterialPageRoute(builder: (context) => AddRestaurant()));
      //         },
      //       ),
      //       ListTile(
      //         title: Text("View Orders", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      //         onTap: () {
      //           Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantVieworders()));
      //         },
      //       ),
      //       ListTile(
      //         title: Text("View Delivery Personnel", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      //         onTap: () {
      //           Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantViewdelivery()));
      //         },
      //       ),
      //       ListTile(
      //         title: Text("Allocate Delivery Personnel", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      //         onTap: () {
      //           Navigator.push(context, MaterialPageRoute(builder: (context) => DeliveryAllocation(orderId: '',)));
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('reservations').orderBy('timestamp', descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text("No Reservations found."));
          }
          var reservations = snapshot.data!.docs;
          return ListView.builder(
            itemCount: reservations.length,
            itemBuilder: (context, index) {
              var reservation = reservations[index];
              String name = reservation['name'] ?? 'No Name';
              String location = reservation['location'] ?? 'No location';
             String menuItem = (reservation['menuItem'] as List?)?.join(", ") ?? 'No menu items';
          //String selectedDate = reservation['selectedDate']?.toString() ?? 'No selectedDate';
          Timestamp? timestamps = reservation['selectedDate'];
          String selectedDate = timestamps != null ? timestamps.toDate().toString() : 'No Date Available';
          
              String selectedTime = reservation['selectedTime']?.toString() ?? 'No selectedTime';

              String seats = reservation['seats']?.toString() ?? 'No seats';
              Timestamp? timestamp = reservation['timestamp'] as Timestamp?;
              String date = timestamp != null ? timestamp.toDate().toString() : 'No Date Available';
              return Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Reserved Person Name: $name", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text("Restaurant Name : $location"),
                      SizedBox(height: 10),
                      Text("Selected Date : $selectedDate"),
                      SizedBox(height: 10),
                        Text("Selected Time: $selectedTime"),
                      SizedBox(height: 10),
                      Text("Number of Reserved Seats: $seats"),
                      SizedBox(height: 10),
                      Text("Selected Menu Items: $menuItem"),
                      SizedBox(height: 10),
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
