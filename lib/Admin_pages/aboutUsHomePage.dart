import 'package:agthia/Admin_pages/Add_Restaurant.dart';
import 'package:agthia/Admin_pages/aboutUsAddContent.dart';
import 'package:agthia/Admin_pages/addJobVaccancy.dart';
import 'package:agthia/Admin_pages/addNewsPage.dart';
import 'package:agthia/Admin_pages/addWordsfromChairman.dart';
import 'package:agthia/Admin_pages/admin_home.dart';
import 'package:agthia/Admin_pages/ourpeopleHomePage.dart';
import 'package:agthia/Admin_pages/subscripionViewPage.dart';
import 'package:agthia/Admin_pages/visionhomepage.dart';
import 'package:flutter/material.dart';

class AboutUsHomePage extends StatelessWidget {
  const AboutUsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        //leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),
        title: Center(
          child: Transform.translate(
            offset: Offset(12.0, 0.0),
            child: Image.asset(
              'asset/logo_agthia.jpg',
              height: 43, // Adjust height based on your design
              fit: BoxFit.contain, // Ensures the image fits well
            ),
          ),
        ),
        backgroundColor: Color(0xFF282d37),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings))],
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
              title: Text("Manage Restaurants",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddRestaurant()));
              },
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
      backgroundColor: Color(0xFFecf1f4),
      
      body: Container(
        width: double.infinity,
        height: double.infinity,
        //color: Color.fromARGB(255, 207, 198, 198),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/background_image1.jpg"),
                fit: BoxFit.cover)),  
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Row(
                    children: [
                      Text(
                        "Admin",
                        style: TextStyle(
                            fontFamily: 'Timesnewroman',
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "About Us",
                        style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 70, 95, 108),
                            fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                  //Text("Admin",style: TextStyle(fontFamily: 'Timesnewroman',fontSize: 22,fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Icon(Icons.circle,size: 5,),
                      TextButton(onPressed: (){}, child: Text("Change password",style: TextStyle(color: Colors.blue,fontSize: 14),)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle,size: 5,),
                      TextButton(onPressed: (){}, child: Text("Logout",style: TextStyle(color: Colors.blue,fontSize: 14),)),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                   // height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(top: BorderSide(color: Colors.grey.shade300,width: 4)),
                      borderRadius: BorderRadius.circular(9,)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("No Content",style: TextStyle(fontSize: 16),),
                          SizedBox(height: 10,),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder()
                            ),
                              onPressed: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUsAdd()));
                              }, child: Text("+ Add",style: TextStyle(color: Colors.black),))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
