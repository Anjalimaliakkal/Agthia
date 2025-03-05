// import 'package:agthia/Admin_pages/addBrands.dart';
// import 'package:agthia/Restaurant_pages/Add_Restaurant.dart';
// import 'package:agthia/Admin_pages/aboutUsHomePage.dart';
// import 'package:agthia/Admin_pages/addJobVaccancy.dart';
// import 'package:agthia/Admin_pages/addWordsfromChairman.dart';
// import 'package:agthia/Admin_pages/admin_home.dart';
// import 'package:agthia/Admin_pages/approval_delivery.dart';
// import 'package:agthia/Admin_pages/approval_restaurant.dart';
// import 'package:agthia/Admin_pages/ourpeopleHomePage.dart';
// import 'package:agthia/Admin_pages/subscripionViewPage.dart';
// import 'package:agthia/Admin_pages/visionhomepage.dart';
// import 'package:flutter/material.dart';

// class addNewsPage extends StatelessWidget {
//   const addNewsPage({super.key});

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
//         actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings))],
//       ),
//       backgroundColor:  const Color.fromARGB(255, 189, 195, 181),
//       drawer: Drawer(
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
//       body: Center(
//         child: Container(
//           width: 600,
//           height: 500,
//           decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 239, 241, 237),
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 6,
//                       spreadRadius: 2,
//                       offset: Offset(2, 4),
//                     ),
//                   ],
//                 ),
//           //color:  Color.fromARGB(255, 189, 195, 181),
//           child: SingleChildScrollView(
//             child: Container(
//               child: Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Align(
//                       alignment: Alignment.center,
//                         child: Text("Add News",style: TextStyle(fontSize: 20,fontFamily: 'Timesnewroman',fontWeight: FontWeight.bold),)),
//                     SizedBox(height: 20,),
//                     Text("Title",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
//                     SizedBox(
//                       width: 800,
//                       child: Container(
//                         decoration:BoxDecoration(
//                         border: Border.all(color: Colors.grey)
//                         ),
//                         height: 120,
//                         child: TextFormField(
//                           maxLines: null,
//                           decoration: InputDecoration(
//                             labelText: '',
//                             border: InputBorder.none
//                           ),
                      
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20,),
//                     Text("Content",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
//                     SizedBox(
//                       width: 800,
//                       child: Container(
//                         decoration:BoxDecoration(
//                             border: Border.all(color: Colors.grey)
//                         ),
//                         height: 120,
//                         child: TextFormField(
//                           maxLines: null,
//                           decoration: InputDecoration(
//                               labelText: '',
//                               border: InputBorder.none
//                           ),
                      
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20,),
//                     SizedBox(
//                       width: 700,
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.blue,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(5)
//                             )
//                           ),
//                             onPressed: (){}, child: Text("Save",style: TextStyle(color: Colors.white),)),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class addNewsPage extends StatefulWidget {
  const addNewsPage({super.key});

  @override
  State<addNewsPage> createState() => _addNewsPageState();
}

class _addNewsPageState extends State<addNewsPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _shortDescController = TextEditingController();
  final TextEditingController _linkController = TextEditingController();

  // Function to add news to Firestore
  Future<void> _addNewsToFirestore() async {
    String title = _titleController.text.trim();
    String shortDescription = _shortDescController.text.trim();
    String link = _linkController.text.trim();

    // Validate that none of the fields are empty
    if (title.isNotEmpty && shortDescription.isNotEmpty && link.isNotEmpty) {
      try {
        // Add news document to Firestore
        await FirebaseFirestore.instance.collection('latest_news').add({
          'title': title,
          'short_description': shortDescription,
          'link': link,
          'timestamp': FieldValue.serverTimestamp(),  // Add timestamp to the news
        });

        // Clear the text fields after saving
        _titleController.clear();
        _shortDescController.clear();
        _linkController.clear();

        // Show a success message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("News added successfully!")),
        );
      } catch (e) {
        // Show error message if adding news fails
        print("Error: $e"); // Log the full error for debugging
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to add news: $e")),
        );
      }
    } else {
      // Show a validation message if fields are empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("All fields are required!")),
      );
    }
  }

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
      ),
      backgroundColor: const Color.fromARGB(255, 189, 195, 181),
      body: Center(
        child: Container(
          width: 600,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 239, 241, 237),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 6, spreadRadius: 2, offset: Offset(2, 4)),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text("Add News", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                SizedBox(height: 20),
                Text("Title", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
                TextField(
                  controller: _titleController,
                  maxLines: 2,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(height: 20),
                Text("Short Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
                TextField(
                  controller: _shortDescController,
                  maxLines: 3,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(height: 20),
                Text("News Link", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
                TextField(
                  controller: _linkController,
                  keyboardType: TextInputType.url,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: _addNewsToFirestore,
                    child: Text("Save", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}