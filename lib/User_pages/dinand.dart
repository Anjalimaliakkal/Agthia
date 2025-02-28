import 'package:agthia/User_pages/About.dart';
import 'package:agthia/User_pages/brandspage.dart';
import 'package:agthia/User_pages/carreerpage.dart';
import 'package:agthia/User_pages/contactus.dart';
import 'package:agthia/User_pages/dinand_reservation.dart';
import 'package:agthia/User_pages/homescreen.dart';
import 'package:agthia/User_pages/mediapage.dart';
import 'package:agthia/User_pages/mission.dart';
import 'package:agthia/User_pages/ourpeople.dart';
import 'package:agthia/User_pages/words_from_chairman.dart';
import 'package:flutter/material.dart';

class Dinand extends StatelessWidget {
  const Dinand({super.key});

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
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 470,
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
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 200,
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
                        Center(
                            child: Text(
                                "Every dish is a chapter. And every concept unfolds a new culinary adventure. Every dish is a chapter.")),
                      ]))),
              SizedBox(
                height: 30,
              ),
              Center(child: Image(image: AssetImage("asset/dinand2.jpg"),height: 300,width: 500,)),

              SizedBox(height: 50),
              Center(
                child: Container(
                  height: 100,
                  width: 250,
                  decoration: BoxDecoration(
                      //color: Colors.blueGrey,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage('asset/dinand.jpg'),
                        fit: BoxFit.fitHeight,
                      )),
                ),
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
                              builder: (context) => DinandReservation()));
                    },
                    child: Text(
                      "Reservation",
                      style: TextStyle(color: Colors.green),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "RESTAURANTS/INTERNATIONAL BRANDS",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  IconButton(
                    icon: Icon(Icons.camera_alt, size: 24),
                    onPressed: () {},
                  ),
                  SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.facebook, size: 24),
                    onPressed: () {},
                  ),
                  SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.share, size: 24),
                    onPressed: () {},
                  ),
                ],
              ),
              Container(
                  width: 1100,
                  child: Divider(
                    color: Colors.black,
                  )),
              SizedBox(height: 16),
              Text(
                "DINAND PAR FERDI",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                width: 1100,
                child: Text(
                  "With its small, well-crafted menu and flexible and responsive service, Dinned allows a greater number of people to join this 16 years old adventure, the key words of which remain shear pleasure and love of food.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
               SizedBox(height: 8),
              
              Container(
                  width: 1100,
                  child: Divider(
                    color: Colors.black,
                  )),

              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 250,
                        width: 230,
                        child: Image(
                            image: AssetImage('asset/dinand3.jpg'),
                            fit: BoxFit.cover),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 250,
                        width: 230,
                        child: Image(
                            image: AssetImage('asset/dinand4.jpg'),
                            fit: BoxFit.cover),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 250,
                        width: 230,
                        child: Image(
                            image: AssetImage('asset/dinand5.jpg'),
                            fit: BoxFit.cover),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
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
        ));
  }
}
