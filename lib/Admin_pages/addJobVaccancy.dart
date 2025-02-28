import 'package:agthia/Admin_pages/Add_Restaurant.dart';
import 'package:agthia/Admin_pages/aboutUsHomePage.dart';
import 'package:agthia/Admin_pages/addNewsPage.dart';
import 'package:agthia/Admin_pages/addWordsfromChairman.dart';
import 'package:agthia/Admin_pages/admin_home.dart';
import 'package:agthia/Admin_pages/ourpeopleHomePage.dart';
import 'package:agthia/Admin_pages/subscripionViewPage.dart';
import 'package:agthia/Admin_pages/visionhomepage.dart';
import 'package:flutter/material.dart';

class AddJobVaccancy extends StatefulWidget {
   AddJobVaccancy({super.key});

  @override
  State<AddJobVaccancy> createState() => _AddJobVaccancyState();
}

class _AddJobVaccancyState extends State<AddJobVaccancy> {
  String? selectedOption;

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 207, 216, 224),
                borderRadius: BorderRadius.circular(9)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Add Job Vaccancy",style: TextStyle(fontSize: 20,fontFamily: 'Timesnewroman',fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Text("Brand",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(height: 5,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Brand',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(5)
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Department",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(height: 5,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Department',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5)
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Job title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(height: 5,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Job Title',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5)
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Job Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(height: 5,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Job Code',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5)
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Job Description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(height: 5,),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      maxLines: null,
                      decoration: InputDecoration(
                          labelText: 'Job Description',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Job Responsiblities",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(height: 5,),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Department',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5)
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Job Requirements",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(height: 5,),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Job Requirements',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5)
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Salary Range",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(height: 5,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Salary Range',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5)
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Age Limit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(height: 5,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Age Limit',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5)
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Employment Type",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(height: 5,),
                  Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButton<String>(
                      value: selectedOption,
                      hint: Text('Select Option'),
                      isExpanded: true, // Makes dropdown take the full width
                      underline: SizedBox(), // Removes default underline
                      items: <String>['Permanent', 'Part-Time', 'Intern']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedOption = newValue;
                        });
                      },
                    ),
                  )
                  ,
                  SizedBox(height: 10,),
                  Text("Place",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(height: 5,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Place',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(5)
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                backgroundColor: Colors.blue
              ),
                onPressed: (){}, child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 15),)),
            SizedBox(width: 10,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    backgroundColor: Colors.blue
                ),
                onPressed: (){}, child: Text("      View \nVaccancies",style: TextStyle(color: Colors.white,fontSize: 15),)),
            SizedBox(width: 10,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    backgroundColor: Colors.blue
                ),
                onPressed: (){}, child: Text("      View \nApplication",style: TextStyle(color: Colors.white,fontSize: 15),))
          ],
        ),
      ),
    );

  }
}
