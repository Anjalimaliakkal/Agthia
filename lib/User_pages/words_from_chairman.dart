import 'package:agthia/User_pages/About.dart';
import 'package:agthia/User_pages/brandspage.dart';
import 'package:agthia/User_pages/carreerpage.dart';
import 'package:agthia/User_pages/contactus.dart';
import 'package:agthia/User_pages/homescreen.dart';
import 'package:agthia/User_pages/mediapage.dart';
import 'package:agthia/User_pages/mission.dart';
import 'package:agthia/User_pages/ourpeople.dart';
import 'package:flutter/material.dart';

class WordsFromChairman extends StatelessWidget {
  const WordsFromChairman({super.key});

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
              //width: MediaQuery.of(context).size.width,
              width: 1000,
              height: 600,
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
                          "I would like to start by expressing the pride of being able to bring the values that Agthia group promised to carry from day one until today with its experience of more than 10 years.",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                            "With a surplus of 1800 employees, we would not be where we are without our dedicated team’s efforts. Our management team, that holds internationally and locally recognized establishments, continues to drive our dynamic and collaborative organization.",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                            "We practice a diversity of thinking combined with collaboration to each other’s strengths, our entrepreneurship and wealth of ideas to fine-tune our food concepts and improve our customer experience; this is how we are achieving amazing results.",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Abdulla Jassim Boodai – Chairman ",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 5,),

                    Directionality(
                            textDirection: TextDirection.rtl,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(//correct
                                  "لأكثر الممتدة بخبرتها اليوم وحتى الأول اليوم منذ بحملها أغذية مجموعة وعدت التي القيم جلب على بقدرتي اعتزازي عن بالتعبير أبدأ أن أود سنوات 10 من ",
                                  style: TextStyle(
                                    fontFamily: 'Barlowthin',
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text("مؤسسات يضم الذي لدينا,الإدارة فريق يواصل .المتفانيفريقنا جهود لولا إليه وصلنا ما إلى لنصل نكن لم موظف موظف, 1800 اكثر من وجود مع والتعاونيةالديناميكية منظمتناقيادة ومحليًا,دوليًا بها معترف ",style: TextStyle(
                                  fontFamily: 'Barlowthin',
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                SizedBox(height: 10),
                                Text(" لتحسين الأفكار من وثروة لدينا الأعمال وريادة البعض, بعضنا لدى القوة نقاط مع التعاون مع جنب إلى جنبًا التفكير في تنوعًا نمارس نحن نتاج مذهلة بهانحقق التي الطريقة هي هذه هذه عملائنا, تجربة وتحسين الغذائية مفاهيمنا ",style: TextStyle(
                                  fontFamily: 'Barlowthin',
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                SizedBox(height: 10,),
                                Text(
                                  "عبدالله جاسم بودي- رئيس مجلس الادارة",
                                  style: TextStyle(
                                    fontFamily: 'Barlowthin',
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                               // Text("لادارة مجلس رئيس بودي جاسم عبدالله  ")
                              ],
                            ),
                          ),
                    // Center(
                    //   child: Text(
                    //     "أود أن أبدأ بالتعبير عن اعتزازي بقدرتي على جلب القيم التي وعدت مجموعة أغذية بحملها منذ اليوم الأول وحتى اليوم بخبرتها الممتدة لأكثر من 10 سنوات. ",
                    //     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Center(
                    //     child: Text(
                    //         "مع وجود اكثر من 1800 موظف، لم نكن لنصل إلى ما وصلنا إليه لولا جهود فريقنا المتفاني. يواصل فريق الإدارة لدينا، الذي يضم مؤسسات معترف بها دوليًا ومحليًا، قيادة منظمتنا الديناميكية والتعاونية.  ",
                    //         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Center(
                    //   child: Text(
                    //       "نحن نمارس تنوعًا في التفكير جنبًا إلى جنب مع التعاون مع نقاط القوة لدى بعضنا البعض، وريادة الأعمال لدينا وثروة من الأفكار لتحسين مفاهيمنا الغذائية وتحسين تجربة عملائنا؛ هذه هي الطريقة التي نحقق بها نتاج مذهلة ",
                    //       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Text("عبدالله جاسم بودي- رئيس مجلس الادارة ",
                    // textAlign: TextAlign.right,
                    // style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
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
    );
  }
}
