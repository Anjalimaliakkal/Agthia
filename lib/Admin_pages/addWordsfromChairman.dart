// import 'package:agthia/Admin_pages/addBrands.dart';
// import 'package:agthia/Restaurant_pages/Add_Restaurant.dart';
// import 'package:agthia/Admin_pages/aboutUsHomePage.dart';
// import 'package:agthia/Admin_pages/addJobVaccancy.dart';
// import 'package:agthia/Admin_pages/addNewsPage.dart';
// import 'package:agthia/Admin_pages/admin_home.dart';
// import 'package:agthia/Admin_pages/approval_delivery.dart';
// import 'package:agthia/Admin_pages/approval_restaurant.dart';
// import 'package:agthia/Admin_pages/ourpeopleHomePage.dart';
// import 'package:agthia/Admin_pages/subscripionViewPage.dart';
// import 'package:agthia/Admin_pages/visionhomepage.dart';
// import 'package:flutter/material.dart';

// class Addwordsfromchairman extends StatelessWidget {
//   const Addwordsfromchairman({super.key});

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
//         backgroundColor: const Color.fromARGB(255, 189, 195, 181),
        
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
      
//       body: Center(
        
//         child: Container(
//           height: 400,
//           width: 600,
          
//           decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 245, 247, 243),
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
                
//           //color: const Color.fromARGB(255, 120, 148, 205),
//           child: Padding(
            
            
//             padding: const EdgeInsets.all(15),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Add CEO Word",style: TextStyle(fontFamily: 'Timesnewroman',fontSize: 20,fontWeight: FontWeight.bold),),
//                 SizedBox(height: 20,),
//                 Text("CEO",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
//                 SizedBox(height: 15,),
//                 Container(
//                   height: 150,
//                   width: 800,
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey,width: 1)
//                   ),
//                   child: TextFormField(
                    
//                     decoration: InputDecoration(
//                         labelText: '',
//                         border: InputBorder.none,
//                         contentPadding: EdgeInsets.all(5)
                        
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20,),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     )
//                   ),
//                     onPressed: (){}, child: Text("Save",style: TextStyle(color: Colors.white),))
//               ],
//             ),
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
import 'package:agthia/Admin_pages/admin_home.dart';
import 'package:agthia/Admin_pages/approval_delivery.dart';
import 'package:agthia/Admin_pages/approval_restaurant.dart';
import 'package:agthia/Admin_pages/ourpeopleHomePage.dart';
import 'package:agthia/Admin_pages/subscripionViewPage.dart';
import 'package:agthia/Admin_pages/visionhomepage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Addwordsfromchairman extends StatefulWidget {
  const Addwordsfromchairman({super.key});

  @override
  _AddwordsfromchairmanState createState() => _AddwordsfromchairmanState();
}

class _AddwordsfromchairmanState extends State<Addwordsfromchairman> {
  final TextEditingController _messageController = TextEditingController();

  // Function to save CEO message
  void saveCEOMessage(String message) async {
    if (message.isNotEmpty) {
      try {
        await FirebaseFirestore.instance.collection('chairmanWords').doc('ceoMessage').set({
          'message': message,
          'timestamp': FieldValue.serverTimestamp(),
          'addedBy': FirebaseAuth.instance.currentUser?.uid ?? 'admin',
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("CEO message saved successfully")));
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error saving CEO message: $e")));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Message is empty, cannot save.")));
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
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
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
            ExpansionTile(
              //tilePadding: const EdgeInsets.only(left: 15, right: 15),
              title: Text(
                "Approvals",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              children: [
                ListTile(
                  title: Text(
                    "Restaurant",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ApprovalRestaurant()));
                  },
                  contentPadding: EdgeInsets.only(left: 60),
                ),
                ListTile(
                  title: Text(
                    "Delivery Personnel",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ApprovalDelivery()));
                  },
                  contentPadding: EdgeInsets.only(left: 60),
                ),
                
              ],
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
        
        body: Center(
          child: Container(
            height: 400,
            width: 600,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 245, 247, 243),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  spreadRadius: 2,
                  offset: Offset(2, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Add CEO Word", style: TextStyle(fontFamily: 'Timesnewroman', fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Text("CEO", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
                  SizedBox(height: 15),
                  Container(
                    height: 150,
                    width: 800,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1)
                    ),
                    child: TextFormField(
                      controller: _messageController,
                      decoration: InputDecoration(
                        labelText: '',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(5)
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      saveCEOMessage(_messageController.text);
                      _messageController.clear(); // Clear the input after saving
                    }, 
                    child: Text("Save", style: TextStyle(color: Colors.white))
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}