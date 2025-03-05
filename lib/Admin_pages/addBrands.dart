// import 'package:agthia/Admin_pages/aboutUsHomePage.dart';
// import 'package:agthia/Admin_pages/addJobVaccancy.dart';
// import 'package:agthia/Admin_pages/addNewsPage.dart';
// import 'package:agthia/Admin_pages/addWordsfromChairman.dart';
// import 'package:agthia/Admin_pages/admin_home.dart';
// import 'package:agthia/Admin_pages/approval_delivery.dart';
// import 'package:agthia/Admin_pages/approval_restaurant.dart';
// import 'package:agthia/Admin_pages/ourpeopleHomePage.dart';
// import 'package:agthia/Admin_pages/subscripionViewPage.dart';
// import 'package:agthia/Admin_pages/visionhomepage.dart';
// import 'package:agthia/Restaurant_pages/Add_Restaurant.dart';
// import 'package:flutter/material.dart';

// class Addbrands extends StatefulWidget {
//   const Addbrands({super.key});

//   @override
//   State<Addbrands> createState() => _AddbrandsState();
// }

// class _AddbrandsState extends State<Addbrands> {
//     final _formKey = GlobalKey<FormState>();
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController registerNumberController =
//       TextEditingController();



//     void _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       // Process the form submission
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Brand added successfully!')),
//       );
//     }
//   }

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
//        body: Container(
        
//          width: double.infinity,
//         height: double.infinity,
//         //color: Color.fromARGB(255, 207, 198, 198),
//         decoration: BoxDecoration(
//           color: const Color.fromARGB(255, 200, 213, 219),
//             // image: DecorationImage(
//             //     image: AssetImage("asset/background_image1.jpg"),
//             //     fit: BoxFit.cover)
//             ),

//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Center(
//                       child: Text("Add Brands",
//                           style: TextStyle(
//                               fontSize: 22, fontWeight: FontWeight.bold,))),
//                   SizedBox(height: 20),
              
                 
//                   Center(
//                     child: SizedBox(
//                       width: 600,
//                       child: TextFormField(
//                         controller: nameController,
//                         validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter the Brand name';
//                     }
//                     return null;
//                   },
//                         decoration: InputDecoration(
//                           labelText: "Brand Name",labelStyle: TextStyle(),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8),
//                             borderSide: BorderSide(color: Colors.white,width: 10),
                            
//                           ),                                         
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
              
//                   // Register Number
//                   Center(
//                     child: SizedBox(
//                       width: 600,
//                       child: TextFormField(
//                         controller: registerNumberController,
//                         validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter the brand registered  ID';
//                     }
//                     return null;
//                   },
//                         decoration: InputDecoration(
//                           labelText: "Registered ID",labelStyle: TextStyle(),
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
              
//                   SizedBox(height: 20),
              
                 
//                   SizedBox(height: 20),
              
//                   // Submit Button
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         _submitForm();
//                         // Handle form submission
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.green,
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//                       ),
//                       child: Text("ADD BRAND",
//                           style: TextStyle(fontSize: 18, color: Colors.white)),
//                     ),
//                   ),
//                 ]
//               )
//             )
//           )
//         )
//        )
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Addbrands extends StatefulWidget {
  const Addbrands({super.key});

  @override
  State<Addbrands> createState() => _AddbrandsState();
}

class _AddbrandsState extends State<Addbrands> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController registerNumberController = TextEditingController();

  // Function to save brand data to Firestore
  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseFirestore.instance.collection('brands').add({
          'name': nameController.text.trim(),
          'registerNumber': registerNumberController.text.trim(),
          'timestamp': FieldValue.serverTimestamp(),
        });

        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Brand added successfully!')),
        );

        // Clear the form
        nameController.clear();
        registerNumberController.clear();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error adding brand: $e')),
        );
      }
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Color.fromARGB(255, 200, 213, 219)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Text("Add Brands",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ))),
                  SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      width: 600,
                      child: TextFormField(
                        controller: nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Brand name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Brand Name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      width: 600,
                      child: TextFormField(
                        controller: registerNumberController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the brand registered ID';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Registered ID",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: _submitForm,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      ),
                      child: Text("ADD BRAND",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
