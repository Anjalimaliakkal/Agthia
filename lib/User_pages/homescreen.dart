import 'package:agthia/User_pages/About.dart';
import 'package:agthia/User_pages/beefbar.dart';
import 'package:agthia/User_pages/brandspage.dart';
import 'package:agthia/User_pages/bumasoud.dart';
import 'package:agthia/User_pages/burgerinn.dart';
import 'package:agthia/User_pages/fatayer.dart';
import 'package:agthia/User_pages/carreerpage.dart';
import 'package:agthia/User_pages/contactus.dart';
import 'package:agthia/User_pages/ferdi.dart';
import 'package:agthia/User_pages/mediapage.dart';
import 'package:agthia/User_pages/mission.dart';
import 'package:agthia/User_pages/namlet.dart';
import 'package:agthia/User_pages/novikov.dart';
import 'package:agthia/User_pages/ourpeople.dart';
import 'package:agthia/User_pages/philippe.dart';
import 'package:agthia/User_pages/words_from_chairman.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

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
      //drawer:  Drawerapp(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 670,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "asset/background_image1.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "EVERY DISH IS A",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Times New Roman',
                              fontSize: 20),
                        ),
                        Text(
                          "CHAPTER, AND EVERY",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Timesnewroman',
                              fontSize: 20),
                        ),
                        Text(
                          "CONCEPT UNFOLDS A NEW",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Timesnewroman',
                              fontSize: 20),
                        ),
                        Text(
                          "CULINARY ADVENTURE.",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Timesnewroman',
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFFf3eddf),
              height: 500,
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: Image(
                  image: AssetImage(
                    "asset/About_us.jpg",
                  ),
                  //fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFf3eddf),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Agthia-Food Company focuses on sustainable and high-quality food concepts, aiming to enhance human health and the environment for future generations.",
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Our People",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "With over 800 employees, the company's success is attributed to its dedicated workforce and senior management, emphasizing diversity and collaboration to foster innovation.",
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Mission and Vision",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Agthia’s mission is to deliver nutritious and delicious food products that cater to various tastes, while committing to sustainability and ethical practices for a healthier future for all.",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 1800,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(width: 2),
                                bottom: BorderSide(width: 2))),
                        child: Text(
                          "RESTAURANTS",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "INTERNATIONAL BRANDS",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(child: Text("We are proud to serve as the leading force behind renowned international brands.")),
                    

                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Beefbar())),
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Container(
                                  color: Colors.red,
                                  height: 250,
                                  width: 230,
                                  child: Image(
                                      image: AssetImage('asset/image2.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 230,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 8,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                              ),
                              child: Text(
                                "BEEFBAR",
                                style: TextStyle(
                                    fontFamily: 'Timesnewroman',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 30), // Space between the two cards
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Philippe())),
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Container(
                                  color: Colors.red,
                                  height: 250,
                                  width: 230,
                                  child: Image(
                                      image: AssetImage('asset/image1.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 230,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 8,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                              ),
                              child: Text(
                                "PHILIPPE BY PHILIPPE CHOW",
                                style: TextStyle(
                                    fontFamily: 'Timesnewroman',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                         ],
                    ),

                    //     SizedBox(width: 30), // Space between the two cards
                    //     Row(
                    //       children: [
                    //         Column(
                    //           children: [
                    //             GestureDetector(
                    //               onTap: () => Navigator.push(
                    //                   context,
                    //                   MaterialPageRoute(
                    //                       builder: (context) => Ferdi())),
                    //               child: MouseRegion(
                    //                 cursor: SystemMouseCursors.click,
                    //                 child: Container(
                    //                   color: Colors.red,
                    //                   height: 250,
                    //                   width: 230,
                    //                   child: Image(
                    //                       image: AssetImage('asset/image3.jpg'),
                    //                       fit: BoxFit.cover),
                    //                 ),
                    //               ),
                    //             ),
                    //             SizedBox(height: 10),
                    //             Container(
                    //               width: 230,
                    //               height: 30,
                    //               alignment: Alignment.center,
                    //               decoration: BoxDecoration(
                    //                 color: Colors.white,
                    //                 boxShadow: [
                    //                   BoxShadow(
                    //                     color: Colors.black.withOpacity(0.25),
                    //                     blurRadius: 8,
                    //                     offset: Offset(4, 4),
                    //                   ),
                    //                 ],
                    //               ),
                    //               child: Text(
                    //                 "FERDI",
                    //                 style: TextStyle(
                    //                     fontFamily: 'Timesnewroman',
                    //                     fontWeight: FontWeight.bold),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //     //   ],
                    //     // ),
                    // //   ],
                    // // ),

                    // SizedBox(
                    //   height: 25,
                    // ),
                    // GestureDetector(
                    //   onTap: () => Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => Novikov(),
                    //       )),
                    //   child: Center(
                    //     child: MouseRegion(
                    //       cursor: SystemMouseCursors.click,
                    //       child: Container(
                    //         color: Colors.red,
                    //         height: 250,
                    //         width: 230,
                    //         child: Image(
                    //           image: AssetImage('asset/image4.jpg'),
                    //           fit: BoxFit.cover,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Center(
                    //   child: Container(
                    //     width: 230,
                    //     height: 30,
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(5.0),
                    //       child: Text(
                    //         "NOVIKOV",
                    //         style: TextStyle(
                    //             fontFamily: 'Timesnewroman',
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //     ),
                    //     decoration:
                    //         BoxDecoration(color: Colors.white, boxShadow: [
                    //       BoxShadow(
                    //           color: Colors.black
                    //               .withOpacity(0.25), // color of the shadow
                    //           blurRadius: 8, // softness control
                    //           offset: Offset(4, 4))
                    //     ]),
                    //   ),
                      
                    // ),
                    //   ],
                    //     ),

                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ferdi())),
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Container(
                                  color: Colors.red,
                                  height: 250,
                                  width: 230,
                                  child: Image(
                                      image: AssetImage('asset/image3.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 230,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 8,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                              ),
                              child: Text(
                                "FERDI",
                                style: TextStyle(
                                    fontFamily: 'Timesnewroman',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 30), // Space between the two cards
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Novikov())),
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Container(
                                  color: Colors.red,
                                  height: 250,
                                  width: 230,
                                  child: Image(
                                      image: AssetImage('asset/image4.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 230,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 8,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                              ),
                              child: Text(
                                "NOVIKOV",
                                style: TextStyle(
                                    fontFamily: 'Timesnewroman',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                         ],
                    ),

                    SizedBox(height: 50),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "LOCAL BRANDS",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(child: Text("We are thrilled to be the driving forces behind the longstanding local grants that have been a part of the community.")),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Bumasoud())),
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Container(
                                  color: Colors.red,
                                  height: 250,
                                  width: 230,
                                  child: Image(
                                      image: AssetImage('asset/BU_MASOUD.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 230,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 8,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                              ),
                              child: Text(
                                "BU MASOUD",
                                style: TextStyle(
                                    fontFamily: 'Timesnewroman',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 30), // Space between the two cards
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Burgerinn())),
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Container(
                                  color: Colors.red,
                                  height: 250,
                                  width: 230,
                                  child: Image(
                                      image: AssetImage('asset/BURGER_INN.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 230,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 8,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                              ),
                              child: Text(
                                "BURGER INN",
                                style: TextStyle(
                                    fontFamily: 'Timesnewroman',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                         ],
                    ),

                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Fatayer())),
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Container(
                                  color: Colors.red,
                                  height: 250,
                                  width: 230,
                                  child: Image(
                                      image: AssetImage('asset/FATAYER.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 230,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 8,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                              ),
                              child: Text(
                                "FATAYER AL TAYER",
                                style: TextStyle(
                                    fontFamily: 'Timesnewroman',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 30), // Space between the two cards
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Namlet())),
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Container(
                                  color: Colors.red,
                                  height: 250,
                                  width: 230,
                                  child: Image(
                                      image: AssetImage('asset/NAMLET.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 230,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 8,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                              ),
                              child: Text(
                                "NAMLET",
                                style: TextStyle(
                                    fontFamily: 'Timesnewroman',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                         ],
                    ),


                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: BeveledRectangleBorder()),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Brandspage()));
                          },
                          child: Text(
                            "View Restaurants",
                            style: TextStyle(color: Colors.green),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
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
                        onPressed: () {},
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
    );
  }
}

class ImageData {
  final String name;
  final String image;
  ImageData({required this.name, required this.image});
}
