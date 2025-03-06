// 


import 'package:agthia/User_pages/About.dart';
import 'package:agthia/User_pages/brandspage.dart';
import 'package:agthia/User_pages/carreerpage.dart';
import 'package:agthia/User_pages/contactus.dart';
import 'package:agthia/User_pages/homescreen.dart';
import 'package:agthia/User_pages/mediapage.dart';
import 'package:agthia/User_pages/mission.dart';
import 'package:agthia/User_pages/words_from_chairman.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Ourpeople extends StatelessWidget {
   Ourpeople({super.key});
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
            child: Image(
              image: AssetImage("asset/logo_agthia.jpg"),
              height: 50,
              fit: BoxFit.contain,
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF282d37),
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
          ],
        ),
      ),
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Positioned.fill(child: Image(image: AssetImage("asset/our_people.jpg"),
                  fit: BoxFit.cover,))
                ],
              ),
            ),
            SizedBox(height: 30,),

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
              //width: MediaQuery.of(context).size.width,
              //color: Color(0xFFf3eddf),
              width: 1000,
              height: 200,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Our People",
                        style:
                            TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(color: Colors.orange,),
                    SizedBox(height: 5,),
                    Center(
                    child:   StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('ourPeople')
            .doc('ourPeopleText') // Changed document name here
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error loading text'));
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            return Center(child: Text('No data available'));
          }

          var data = snapshot.data!.data() as Map<String, dynamic>;
          String text = data['text'] ?? 'No text available';

          return Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              text,
              style: TextStyle(fontSize: 18),
            ),
          );
        },
      )
                    ),
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

                  SizedBox(height: 10,),

                      //   Container(
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //     color: Colors.red
                      //   )
                      // ),
                      // width: MediaQuery.of(context).size.width/1.1,
                      // height: 40,
                      // child: ElevatedButton(
                      //     style: ElevatedButton.styleFrom(
                      //         minimumSize: Size(MediaQuery.of(context).size.width/1.1, 40),
                      //         shape: RoundedRectangleBorder()
                      //     ),
                      //     onPressed: (){}, child: Text("Subscribe",style: TextStyle(color: Colors.black),)),),
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
            ),
          
        );


  }
}
