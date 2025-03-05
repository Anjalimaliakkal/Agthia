// import 'package:agthia/User_pages/About.dart';
// import 'package:agthia/User_pages/brandspage.dart';
// import 'package:agthia/User_pages/carreerpage.dart';
// import 'package:agthia/User_pages/contactus.dart';
// import 'package:agthia/User_pages/homescreen.dart';
// import 'package:agthia/User_pages/mediapage.dart';
// import 'package:agthia/User_pages/ourpeople.dart';
// import 'package:agthia/User_pages/user_changepassword.dart';
// import 'package:agthia/User_pages/words_from_chairman.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:flutter/material.dart';

// class Mission extends StatelessWidget {
//   const Mission({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        appBar: AppBar(
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
//                     "Mission/Vission",
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
//                   Positioned.fill(child: Image(image: AssetImage("asset/mission.jpg"),
//                   fit: BoxFit.cover,))
//                 ],
//               ),
//             ),
//             SizedBox(height: 30,),

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
//               //color: Color(0xFFf3eddf),
//               width: 1000,
//               height: 200,
//               child: Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Center(
//                       child: Text(
//                         "Mission and Vision",
//                         style:
//                             TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Divider(color: Colors.orange,),
//                     SizedBox(height: 5,),
//                     Center(
//                       child: Text(
//                         "Agthia’s mission is to deliver nutritious and delicious food products that cater to various tastes, while committing to sustainability and ethical practices for a healthier future for all.",
//                       ),
//                     ),
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

//                   SizedBox(height: 10,),

//                         Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.red
//                         )
//                       ),
//                       width: MediaQuery.of(context).size.width/1.1,
//                       height: 40,
//                       child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                               minimumSize: Size(MediaQuery.of(context).size.width/1.1, 40),
//                               shape: RoundedRectangleBorder()
//                           ),
//                           onPressed: (){}, child: Text("Subscribe",style: TextStyle(color: Colors.black),)),),


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
//                 ],
//               ),
//             ),
          
//         );


//   }
// }

import 'package:agthia/User_pages/controller/missionandvisioncontroller.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:agthia/User_pages/About.dart';
import 'package:agthia/User_pages/brandspage.dart';
import 'package:agthia/User_pages/carreerpage.dart';
import 'package:agthia/User_pages/contactus.dart';
import 'package:agthia/User_pages/homescreen.dart';
import 'package:agthia/User_pages/mediapage.dart';
import 'package:agthia/User_pages/ourpeople.dart';
import 'package:agthia/User_pages/words_from_chairman.dart';

class Mission extends StatelessWidget {
  const Mission({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = MissionAndVisionController();

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
        backgroundColor: const Color(0xFF282d37),
      ),
      drawer: buildDrawer(context),
      body: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: controller.getMissionAndVisionStream(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text("Error loading data"));
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Center(child: Text("No data available"));
          }

          final data = snapshot.data!.data();
          final visionContent =
              data?['vision_content'] ?? 'No Vision Available';

          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 300,
                  child: Image.asset("asset/mission.jpg", fit: BoxFit.cover),
                ),
                const SizedBox(height: 30),
                buildMissionAndVisionSection(visionContent),
                const SizedBox(height: 20),
                buildFooter(context),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildMissionAndVisionSection(String visionContent) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 1200,
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
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Mission and Vision",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(color: Colors.orange),
            const SizedBox(height: 10),
            Text(
              visionContent,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDrawer(BuildContext context) {
    return Drawer(
      width: 200,
      backgroundColor: const Color(0xFF282d37),
      child: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Color(0xFF282d37)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person),
                ),
                const SizedBox(height: 7),
                const Text("User",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
          ),
          buildDrawerItem(context, "Home", Homescreen()),
          buildExpandableDrawer(context),
          buildDrawerItem(context, "Brands", Brandspage()),
          buildDrawerItem(context, "Media", Mediapage()),
          buildDrawerItem(context, "Career", Carreerpage()),
          buildDrawerItem(context, "Contact Us", Contactus()),
        ],
      ),
    );
  }

  Widget buildExpandableDrawer(BuildContext context) {
    return ExpansionTile(
      title: const Text("About us",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      children: [
        buildDrawerItem(context, "About", About(), padding: 60),
        buildDrawerItem(context, "Our People", Ourpeople(), padding: 60),
        buildDrawerItem(context, "Mission/Vision", Mission(), padding: 60),
        buildDrawerItem(context, "Word from Chairman", WordsFromChairman(),
            padding: 60),
      ],
    );
  }

  Widget buildDrawerItem(BuildContext context, String title, Widget page,
      {double padding = 12}) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: padding),
      title: Text(title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white)),
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => page)),
    );
  }

  Widget buildFooter(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const Divider(color: Colors.white),
          const Text("CONTACT",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text(
            "AL-SHARIQA TOWER\nFLOOR 7\nJABER AL MUBARAK STREET, BLOCK 2\nKUWAIT CITY",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 15),
          const Text(
            "Join our mailing list for updates\nGet news & other events",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: "Email",
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 40),
            ),
            onPressed: () {},
            child:
                const Text("Subscribe", style: TextStyle(color: Colors.black)),
          ),
          const SizedBox(height: 15),
          Text("22260445",
              style: TextStyle(
                  color: Colors.pink[200], fontWeight: FontWeight.bold)),
          Text("INFO@AGTHIA-FOOD.COM.KW",
              style: TextStyle(color: Colors.pink[200])),
          const SizedBox(height: 10),
          const Divider(color: Colors.white),
          const Icon(Icons.copyright, color: Colors.white),
          const Text("Copyright", style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}