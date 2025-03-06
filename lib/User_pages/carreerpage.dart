// import 'package:agthia/User_pages/About.dart';
// import 'package:agthia/User_pages/brandspage.dart';
// import 'package:agthia/User_pages/carreer_application.dart';
// import 'package:agthia/User_pages/contactus.dart';
// import 'package:agthia/User_pages/homescreen.dart';
// import 'package:agthia/User_pages/mediapage.dart';
// import 'package:agthia/User_pages/mission.dart';
// import 'package:agthia/User_pages/ourpeople.dart';
// import 'package:agthia/User_pages/user_changepassword.dart';
// import 'package:agthia/User_pages/words_from_chairman.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:flutter/material.dart';

// class Carreerpage extends StatelessWidget {
//   const Carreerpage({super.key});

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
//                     image: AssetImage("asset/carreer.jpg"),
//                     fit: BoxFit.cover,
//                   ))
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: Text(
//                 "Career Opportunities",
//                 style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//                 // decoration: TextDecoration.underline,
//                 // decorationColor: Colors.orange,
//                 // decorationThickness: sqrt1_2),
//               ),
//             ),
//             SizedBox(height: 10),
//             Container(
//               width: 250,
//               height: 1,
//               color: Colors.orange,
//             ),
//             // Divider(
//             //   color: Colors.orange,
//             // ),
//             SizedBox(
//               height: 30,
//             ),
//             Center(
//               child: Container(
//                 decoration: BoxDecoration(
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
//                 width: 900,
//                 height: 200,
//                 //color: Color(0xFFf3eddf),
//                 child: Padding(
//                   padding: EdgeInsets.all(20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ListTile(
//                         leading: Text(
//                           "Job Title :- Receptionist",
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ),
//                       ListTile(
//                         trailing: Text(
//                           "Brand :- Agthia Company",
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Center(
//                         child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                                 shape: BeveledRectangleBorder()),
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           CarreerApplication()));
//                             },
//                             child: Text("Apply Now")),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Center(
//               child: Container(
//                 decoration: BoxDecoration(
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
//                 width: 900,
//                 height: 200,
//                 //color: Color(0xFFf3eddf),
//                 child: Padding(
//                   padding: EdgeInsets.all(20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ListTile(
//                         leading: Text(
//                           "Job Title :- CDP",
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ),
//                       ListTile(
//                         trailing: Text(
//                           "Brand :- Agthia Company",
//                           style: TextStyle(fontSize: 15),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Center(
//                         child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                                 shape: BeveledRectangleBorder()),
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           CarreerApplication()));
//                             },
//                             child: Text("Apply Now")),
//                       )
//                     ],
//                   ),
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
//                           width: MediaQuery.of(context).size.width/1.1,
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


import 'package:agthia/User_pages/About.dart';
import 'package:agthia/User_pages/brandspage.dart';
import 'package:agthia/User_pages/carreer_application.dart';
import 'package:agthia/User_pages/contactus.dart';
import 'package:agthia/User_pages/homescreen.dart';
import 'package:agthia/User_pages/mediapage.dart';
import 'package:agthia/User_pages/mission.dart';
import 'package:agthia/User_pages/ourpeople.dart';
import 'package:agthia/User_pages/words_from_chairman.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Carreerpage extends StatelessWidget {
   Carreerpage({super.key});
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Transform.translate(
            offset: Offset(-10.0, 0.0),
            child: Image.asset(
              "asset/logo_agthia.jpg",
              height: 50,
              fit: BoxFit.contain,
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF282d37),
      ),
      drawer: Drawer(
        width: 200,
        backgroundColor: const Color(0xFF282d37),
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFF282d37)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    "User",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text("Home",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homescreen()));
              },
            ),
            ExpansionTile(
              title: const Text(
                "About us",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              children: [
                ListTile(
                  title: const Text(
                    "About",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => About()));
                  },
                  contentPadding: const EdgeInsets.only(left: 60),
                ),
                ListTile(
                  title: const Text(
                    "Our People",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Ourpeople()));
                  },
                  contentPadding: const EdgeInsets.only(left: 60),
                ),
                ListTile(
                  title: const Text(
                    "Mission/Vision",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mission()));
                  },
                  contentPadding: const EdgeInsets.only(left: 60),
                ),
                ListTile(
                  title: const Text(
                    "Word from Chairman",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WordsFromChairman(),
                      ),
                    );
                  },
                  contentPadding: const EdgeInsets.only(left: 60),
                ),
              ],
            ),
            ListTile(
              title: const Text("Brands",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Brandspage()));
              },
            ),
            ListTile(
              title: const Text("Media",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mediapage()));
              },
            ),
            ListTile(
              title: const Text("Carrier",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carreerpage()));
              },
            ),
            ListTile(
              title: const Text("Contact us",
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
      body: SingleChildScrollView(
        // This allows the entire screen to scroll.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Image
            SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "asset/carreer.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Page Title
            const Center(
              child: Text(
                "Career Opportunities",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 250,
              height: 1,
              color: Colors.orange,
              margin: const EdgeInsets.symmetric(horizontal: 20),
            ),
            const SizedBox(height: 30),

            // StreamBuilder for job vacancies
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('job_vacancies')
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(
                      child: Text("Error loading jobs: ${snapshot.error}"));
                }
                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return const Center(child: Text("No job vacancies available."));
                }

                // Firestore documents
                var jobDocs = snapshot.data!.docs;

                // ListView inside SingleChildScrollView → use shrinkWrap & no scroll physics
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: jobDocs.length,
                  itemBuilder: (context, index) {
                    var job = jobDocs[index];
                    return JobCard(
                      title: job['jobTitle'] ?? 'Untitled',
                      brand: job['brand'] ?? 'No Brand',
                      jobId: job.id,
                    );
                  },
                );
              },
            ),

            const SizedBox(height: 20),

            // Footer
            Container(
              color: Colors.black,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Divider(color: Colors.white),
                  const SizedBox(height: 10),
                  const Text(
                    "CONTACT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "AL-SHARIQA TOWER\nFLOOR 7\nJABER AL MUBARAK STREET, BLOCK 2\nKUWAIT CITY",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Join our mailing list for updates\nGet news & other events",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Email",
                        filled: true,
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
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
                  const SizedBox(height: 15),
                  Text("22260445",
                      style: TextStyle(
                          color: Colors.pink[200],
                          fontWeight: FontWeight.bold)),
                  Text("INFO@AGTHIA-FOOD.COM.KW",
                      style: TextStyle(color: Colors.pink[200])),
                  const SizedBox(height: 10),
                  const Divider(color: Colors.white),
                  const SizedBox(height: 5),
                  const Icon(
                    Icons.copyright,
                    color: Colors.white,
                  ),
                  const Text("Copyright",
                      style: TextStyle(color: Colors.white)),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  final String title;
  final String brand;
  final String jobId;

  const JobCard({
    Key? key,
    required this.title,
    required this.brand,
    required this.jobId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 900,
        margin: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              spreadRadius: 2,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              ListTile(
                leading: Text(
                  "Job Title: $title",
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              // Brand
              ListTile(
                trailing: Text(
                  "Brand: $brand",
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              // Apply Now Button
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const BeveledRectangleBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CarreerApplication(jobId: jobId, jobTitle: title),
                      ),
                    );
                  },
                  child: const Text("Apply Now"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
