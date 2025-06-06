// import 'package:agthia/User_pages/About.dart';
// import 'package:agthia/User_pages/brandspage.dart';
// import 'package:agthia/User_pages/carreerpage.dart';
// import 'package:agthia/User_pages/contactus.dart';
// import 'package:agthia/User_pages/homescreen.dart';
// import 'package:agthia/User_pages/mediapage.dart';
// import 'package:agthia/User_pages/mission.dart';
// import 'package:agthia/User_pages/ourpeople.dart';
// import 'package:agthia/User_pages/user_changepassword.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:flutter/material.dart';

// class WordsFromChairman extends StatelessWidget {
//   const WordsFromChairman({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Transform.translate(
//             offset: Offset(-10.0, 0.0),
//             child: Image(
//               image: AssetImage("asset/logo_agthia.jpg"),
//               height: 50,
//               fit: BoxFit.contain,
//             ),
//           ),
//         ),
//         iconTheme: IconThemeData(color: Colors.white),
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
//                   "User",
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
//                         builder: (context) => UserChangepassword()));
//                 // Navigate to change password screen
//               } else if (value == 'logout') {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => LoginPage()));
//                 // Perform logout action
//               }
//             },
//             itemBuilder: (BuildContext context) => [
//               // Title Item (Non-clickable)
//               PopupMenuItem<String>(
//                 enabled: false,
//                 child: Text(
//                   "User",
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
//                     "User",
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
//                     MaterialPageRoute(builder: (context) => Homescreen()));
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
//                         MaterialPageRoute(builder: (context) => About()));
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
//                         MaterialPageRoute(builder: (context) => Ourpeople()));
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
//                         MaterialPageRoute(builder: (context) => Mission()));
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
//                             builder: (context) => WordsFromChairman()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//               ],
//             ),
//             ListTile(
//               title: Text("Brands",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Brandspage()));
//               },
//             ),
//             ListTile(
//               title: Text("Media",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Mediapage()));
//               },
//             ),
//             ListTile(
//               title: Text("Carrier",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Carreerpage()));
//               },
//             ),
//             ListTile(
//               title: Text("Contact us",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Contactus()));
//               },
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             SizedBox(
//               height: 300,
//               child: Stack(
//                 children: [
//                   Positioned.fill(
//                       child: Image(
//                     image: AssetImage("asset/about_us2.jpg"),
//                     fit: BoxFit.cover,
//                   ))
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                   color: Colors.white,
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
//               //width: MediaQuery.of(context).size.width,
//               width: 1000,
//               height: 600,
//               child: Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Center(
//                       child: Text(
//                         "Word from Chairman",
//                         style: TextStyle(
//                             fontSize: 28, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Divider(
//                       color: Colors.orange,
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Center(
//                       child: Text(
//                           "I would like to start by expressing the pride of being able to bring the values that Agthia group promised to carry from day one until today with its experience of more than 10 years.",
//                           style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Center(
//                         child: Text(
//                             "With a surplus of 1800 employees, we would not be where we are without our dedicated team’s efforts. Our management team, that holds internationally and locally recognized establishments, continues to drive our dynamic and collaborative organization.",
//                             style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Center(
//                         child: Text(
//                             "We practice a diversity of thinking combined with collaboration to each other’s strengths, our entrepreneurship and wealth of ideas to fine-tune our food concepts and improve our customer experience; this is how we are achieving amazing results.",
//                             style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Text("Abdulla Jassim Boodai – Chairman ",
//                     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                     SizedBox(height: 5,),

//                     Directionality(
//                             textDirection: TextDirection.rtl,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(//correct
//                                   "لأكثر الممتدة بخبرتها اليوم وحتى الأول اليوم منذ بحملها أغذية مجموعة وعدت التي القيم جلب على بقدرتي اعتزازي عن بالتعبير أبدأ أن أود سنوات 10 من ",
//                                   style: TextStyle(
//                                     fontFamily: 'Barlowthin',
//                                     //fontWeight: FontWeight.bold,
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                                 SizedBox(height: 10),
//                                 Text("مؤسسات يضم الذي لدينا,الإدارة فريق يواصل .المتفانيفريقنا جهود لولا إليه وصلنا ما إلى لنصل نكن لم موظف موظف, 1800 اكثر من وجود مع والتعاونيةالديناميكية منظمتناقيادة ومحليًا,دوليًا بها معترف ",style: TextStyle(
//                                   fontFamily: 'Barlowthin',
//                                   //fontWeight: FontWeight.bold,
//                                   fontSize: 16,
//                                 ),),
//                                 SizedBox(height: 10),
//                                 Text(" لتحسين الأفكار من وثروة لدينا الأعمال وريادة البعض, بعضنا لدى القوة نقاط مع التعاون مع جنب إلى جنبًا التفكير في تنوعًا نمارس نحن نتاج مذهلة بهانحقق التي الطريقة هي هذه هذه عملائنا, تجربة وتحسين الغذائية مفاهيمنا ",style: TextStyle(
//                                   fontFamily: 'Barlowthin',
//                                   //fontWeight: FontWeight.bold,
//                                   fontSize: 16,
//                                 ),),
//                                 SizedBox(height: 10,),
//                                 Text(
//                                   "عبدالله جاسم بودي- رئيس مجلس الادارة",
//                                   style: TextStyle(
//                                     fontFamily: 'Barlowthin',
//                                     //fontWeight: FontWeight.bold,
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                                // Text("لادارة مجلس رئيس بودي جاسم عبدالله  ")
//                               ],
//                             ),
//                           ),
//                     // Center(
//                     //   child: Text(
//                     //     "أود أن أبدأ بالتعبير عن اعتزازي بقدرتي على جلب القيم التي وعدت مجموعة أغذية بحملها منذ اليوم الأول وحتى اليوم بخبرتها الممتدة لأكثر من 10 سنوات. ",
//                     //     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
//                     //   ),
//                     // ),
//                     // SizedBox(
//                     //   height: 10,
//                     // ),
//                     // Center(
//                     //     child: Text(
//                     //         "مع وجود اكثر من 1800 موظف، لم نكن لنصل إلى ما وصلنا إليه لولا جهود فريقنا المتفاني. يواصل فريق الإدارة لدينا، الذي يضم مؤسسات معترف بها دوليًا ومحليًا، قيادة منظمتنا الديناميكية والتعاونية.  ",
//                     //         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
//                     // SizedBox(
//                     //   height: 10,
//                     // ),
//                     // Center(
//                     //   child: Text(
//                     //       "نحن نمارس تنوعًا في التفكير جنبًا إلى جنب مع التعاون مع نقاط القوة لدى بعضنا البعض، وريادة الأعمال لدينا وثروة من الأفكار لتحسين مفاهيمنا الغذائية وتحسين تجربة عملائنا؛ هذه هي الطريقة التي نحقق بها نتاج مذهلة ",
//                     //       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                     // ),
//                     // SizedBox(
//                     //   height: 10,
//                     // ),
//                     // Text("عبدالله جاسم بودي- رئيس مجلس الادارة ",
//                     // textAlign: TextAlign.right,
//                     // style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               color: Colors.black,
//               padding: EdgeInsets.only(),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Divider(color: Colors.white),
//                   SizedBox(height: 10),
//                   Text(
//                     "CONTACT",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 13,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "AL-SHARIQA TOWER\nFLOOR 7\nJABER AL MUBARAK STREET, BLOCK 2\nKUWAIT CITY",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.white, fontSize: 14),
//                   ),
//                   SizedBox(height: 15),
//                   Text(
//                     "Join our mailing list for updates\nGet news & other events",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.white70, fontSize: 14),
//                   ),
//                   SizedBox(height: 10),
//                   Padding(
//                     padding: EdgeInsets.only(),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           width: MediaQuery.of(context).size.width / 1.1,
//                           child: Center(
//                             child: TextField(
//                               textAlign: TextAlign.center,
//                               decoration: InputDecoration(
//                                 hintText: "Email",
//                                 filled: true,
//                                 fillColor: Colors.white,
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.only(),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Container(
//                     decoration:
//                         BoxDecoration(border: Border.all(color: Colors.red)),
//                     width: MediaQuery.of(context).size.width / 1.1,
//                     height: 40,
//                     child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             minimumSize: Size(
//                                 MediaQuery.of(context).size.width / 1.1, 40),
//                             shape: RoundedRectangleBorder()),
//                         onPressed: () {},
//                         child: Text(
//                           "Subscribe",
//                           style: TextStyle(color: Colors.black),
//                         )),
//                   ),
//                   SizedBox(height: 15),
//                   Text("22260445",
//                       style: TextStyle(
//                           color: Colors.pink[200],
//                           fontWeight: FontWeight.bold)),
//                   Text("INFO@AGTHIA-FOOD.COM.KW",
//                       style: TextStyle(color: Colors.pink[200])),
//                   SizedBox(height: 10),
//                   Divider(color: Colors.white),
//                   SizedBox(height: 5),
//                   Icon(
//                     Icons.copyright,
//                     color: Colors.white,
//                   ),
//                   Text("Copyright", style: TextStyle(color: Colors.white)),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:agthia/User_pages/About.dart';
import 'package:agthia/User_pages/brandspage.dart';
import 'package:agthia/User_pages/carreerpage.dart';
import 'package:agthia/User_pages/contactus.dart';
import 'package:agthia/User_pages/homescreen.dart';
import 'package:agthia/User_pages/mediapage.dart';
import 'package:agthia/User_pages/mission.dart';
import 'package:agthia/User_pages/ourpeople.dart';
import 'package:agthia/User_pages/user_changepassword.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WordsFromChairman extends StatelessWidget {
   WordsFromChairman({super.key});
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // Function to add user subscription to Firestore
Future<void> subscribeUser() async {
  User? user = _auth.currentUser;

  if (user != null) {
    String userEmail = user.email!.toLowerCase(); // Convert email to lowercase

    try {
      // Reference to the Firestore collection
      CollectionReference subscriptions = _firestore.collection('subscriptions');

      // Check if the user already exists in the 'subscriptions' collection
      QuerySnapshot querySnapshot = await subscriptions
          .where('email', isEqualTo: userEmail)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        // User is already subscribed, do not add again
        print('User is already subscribed.');
      } else {
        // User is not subscribed, add them
        await subscriptions.add({
          'email': userEmail,
          'subscriptionDate': Timestamp.now(),
        });
        print('Subscription successful!');
      }
    } catch (e) {
      print('Error subscribing user: $e');
    }
  } else {
    print('No user logged in');
  }
}

  Future<Map<String, dynamic>> fetchWordsFromChairman() async {
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection('words_from_chairman')
        .doc('chairmanMessage') // Adjust the document ID accordingly
        .get();

    if (snapshot.exists) {
      return snapshot.data() as Map<String, dynamic>;
    } else {
      throw Exception('No data found');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            // Other drawer items
          ],
        ),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: fetchWordsFromChairman(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData || snapshot.data == null) {
            return Center(child: Text('No data found'));
          }

          // Data successfully fetched from Firestore
          var data = snapshot.data!;
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 300,
                  width: 500,
                  child: Stack(
                    children: [
                      Positioned.fill(
                          child: Image(
                        image: AssetImage("asset/about_us2.jpg"),
                        fit: BoxFit.cover,
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                  width: 1000,
                  height: 900,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Word from Chairman",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 10),
                        Divider(
                          color: Colors.orange,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            data['content'] ?? 'No message available',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // Center(
                        //   child: Text(
                        //     data['english_message_part2'] ??
                        //         'No additional message available',
                        //     style: TextStyle(
                        //         fontWeight: FontWeight.bold, fontSize: 16),
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        // Center(
                        //   child: Text(
                        //     "Abdulla Jassim Boodai – Chairman",
                        //     style: TextStyle(
                        //         fontWeight: FontWeight.bold, fontSize: 16),
                        //   ),
                        // ),
                        // SizedBox(height: 5),
                        // Directionality(
                        //   textDirection: TextDirection.rtl,
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Text(
                        //         data['arabic_message'] ??
                        //             'No Arabic message available',
                        //         style: TextStyle(
                        //           fontFamily: 'Barlowthin',
                        //           fontSize: 16,
                        //         ),
                        //       ),
                        //       SizedBox(height: 10),
                        //       Text(
                        //         data['arabic_message_part2'] ??
                        //             'No additional Arabic message available',
                        //         style: TextStyle(
                        //           fontFamily: 'Barlowthin',
                        //           fontSize: 16,
                        //         ),
                        //       ),
                        //       SizedBox(height: 10),
                        //       Text(
                        //         "عبدالله جاسم بودي- رئيس مجلس الادارة",
                        //         style: TextStyle(
                        //           fontFamily: 'Barlowthin',
                        //           fontSize: 16,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  color: Colors.black,
                  padding: EdgeInsets.only(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Divider(color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        "CONTACT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "AL-SHARIQA TOWER\nFLOOR 7\nJABER AL MUBARAK STREET, BLOCK 2\nKUWAIT CITY",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Join our mailing list for updates\nGet news & other events",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.1,
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //       border: Border.all(color: Colors.red)),
                      //   width: MediaQuery.of(context).size.width / 1.1,
                      //   height: 40,
                      //   child: ElevatedButton(
                      //       style: ElevatedButton.styleFrom(
                      //           minimumSize: Size(
                      //               MediaQuery.of(context).size.width / 1.1,
                      //               40),
                      //           shape: RoundedRectangleBorder()),
                      //       onPressed: () {},
                      //       child: Text(
                      //         "Subscribe",
                      //         style: TextStyle(color: Colors.black),
                      //       )),
                      // ),
                      Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.red)),
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(
                                MediaQuery.of(context).size.width / 1.1, 40),
                            shape: RoundedRectangleBorder()),
                        onPressed: () async {
           
            await subscribeUser();
            
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Subscription Successful")),
            );
          },
                        child: Text(
                          "Subscribe",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                      SizedBox(height: 15),
                      Text("22260445",
                          style: TextStyle(
                              color: Colors.pink[200],
                              fontWeight: FontWeight.bold)),
                      Text("INFO@AGTHIA-FOOD.COM.KW",
                          style: TextStyle(color: Colors.pink[200])),
                      SizedBox(height: 10),
                      Divider(color: Colors.white),
                      SizedBox(height: 5),
                      Icon(
                        Icons.copyright,
                        color: Colors.white,
                      ),
                      Text("Copyright", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
