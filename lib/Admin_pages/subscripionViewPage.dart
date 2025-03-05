// import 'package:agthia/Admin_pages/addBrands.dart';
// import 'package:agthia/Admin_pages/aboutUsHomePage.dart';
// import 'package:agthia/Admin_pages/addJobVaccancy.dart';
// import 'package:agthia/Admin_pages/addNewsPage.dart';
// import 'package:agthia/Admin_pages/addWordsfromChairman.dart';
// import 'package:agthia/Admin_pages/admin_home.dart';
// import 'package:agthia/Admin_pages/approval_delivery.dart';
// import 'package:agthia/Admin_pages/approval_restaurant.dart';
// import 'package:agthia/Admin_pages/ourpeopleHomePage.dart';
// import 'package:agthia/Admin_pages/visionhomepage.dart';
// import 'package:flutter/material.dart';

// class Subscripionviewpage extends StatelessWidget {
//   const Subscripionviewpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           iconTheme: IconThemeData(color: Colors.white),
//           //leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),
//           title: Center(
//             child: Transform.translate(
//               offset: Offset(12.0, 0.0),
//               child: Image.asset(
//                 'asset/logo_agthia.jpg',
//                 height: 43, // Adjust height based on your design
//                 fit: BoxFit.contain, // Ensures the image fits well
//               ),
//             ),
//           ),
//           backgroundColor: Color(0xFF282d37),
//           actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings))],
//         ),
//         backgroundColor:  const Color.fromARGB(255, 189, 195, 181),
//         drawer: Drawer(
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
//                     "Admin",
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
//                     MaterialPageRoute(builder: (context) => AdminHome()));
//               },
//             ),
//             ExpansionTile(
//               //tilePadding: const EdgeInsets.only(left: 15, right: 15),
//               title: Text(
//                 "About us",
//                 style:
//                     TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               children: [
//                 ListTile(
//                   title: Text(
//                     "About",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => AboutUsHomePage()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Our People",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Ourpeoplehomepage()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Mission/Vision",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Visionhomepage()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Word from Chairman",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => Addwordsfromchairman()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//               ],
//             ),
//             ListTile(
//               title: Text("Media",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => addNewsPage()));
//               },
//             ),
//             ListTile(
//               title: Text("Add Brands",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Addbrands()));
//               },
//             ),
//             ExpansionTile(
//               //tilePadding: const EdgeInsets.only(left: 15, right: 15),
//               title: Text(
//                 "Approvals",
//                 style:
//                     TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               children: [
//                 ListTile(
//                   title: Text(
//                     "Restaurant",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => ApprovalRestaurant()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Delivery Personnel",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => ApprovalDelivery()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
                
//               ],
//             ),
//             ListTile(
//               title: Text("Subscriptions",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Subscripionviewpage()));
//               },
//             ),
//             ListTile(
//               title: Text("Careers",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => AddJobVaccancy()));
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           color: Colors.white,
//           width: MediaQuery.of(context).size.width,
//           height: 50,
//           child: Center(
//             child: Text("No Subscription"),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:agthia/Admin_pages/aboutUsHomePage.dart';
import 'package:agthia/Admin_pages/addBrands.dart';
import 'package:agthia/Admin_pages/addJobVaccancy.dart';
import 'package:agthia/Admin_pages/addNewsPage.dart';
import 'package:agthia/Admin_pages/addWordsfromChairman.dart';
import 'package:agthia/Admin_pages/admin_home.dart';
import 'package:agthia/Admin_pages/ourpeopleHomePage.dart';
import 'package:agthia/Admin_pages/visionhomepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Subscripionviewpage extends StatelessWidget {
  const Subscripionviewpage({super.key});

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
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings))],
        ),
        backgroundColor:  const Color.fromARGB(255, 189, 195, 181),
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
                    "Admin",
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
                    MaterialPageRoute(builder: (context) => AdminHome()));
              },
            ),
            ExpansionTile(
              //tilePadding: const EdgeInsets.only(left: 15, right: 15),
              title: Text(
                "About us",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
                        MaterialPageRoute(builder: (context) => AboutUsHomePage()));
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
                        MaterialPageRoute(builder: (context) => Ourpeoplehomepage()));
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
                        MaterialPageRoute(builder: (context) => Visionhomepage()));
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
                            builder: (context) => Addwordsfromchairman()));
                  },
                  contentPadding: EdgeInsets.only(left: 60),
                ),
              ],
            ),
            ListTile(
              title: Text("Media",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => addNewsPage()));
              },
            ),
            ListTile(
              title: Text("Add Brands",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Addbrands()));
              },
            ),
            ListTile(
              title: Text("Subscriptions",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Subscripionviewpage()));
              },
            ),
            ListTile(
              title: Text("Careers",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddJobVaccancy()));
              },
            ),
          ],
        ),
      ),
      body:StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('subscriptions')
            .orderBy('subscriptionDate', descending: true) // Order by date
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text("No subscriptions found."));
          }

          var subscriptions = snapshot.data!.docs;
          return ListView.builder(
            itemCount: subscriptions.length,
            itemBuilder: (context, index) {
              var subscription = subscriptions[index];
              return ListTile(
                title: Text(subscription['email']),
                subtitle: Text(
                    "${(subscription['subscriptionDate'] as Timestamp).toDate()}"),
              );
            },
          );
        },
      ),
    );
  }
}
