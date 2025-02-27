import 'package:agthia/Restaurant_changepassword.dart';
import 'package:agthia/aboutUsHomePage.dart';
import 'package:agthia/addJobVaccancy.dart';
import 'package:agthia/addNewsPage.dart';
import 'package:agthia/addWordsfromChairman.dart';
import 'package:agthia/backend_homepages.dart';
import 'package:agthia/login.dart';
import 'package:agthia/ourpeopleHomePage.dart';
import 'package:agthia/subscripionViewPage.dart';
import 'package:agthia/visionhomepage.dart';
import 'package:flutter/material.dart';

class AddRestaurant extends StatefulWidget {
  const AddRestaurant({super.key});

  @override
  State<AddRestaurant> createState() => _AddRestaurantState();
}

class _AddRestaurantState extends State<AddRestaurant> {
  final _formKey = GlobalKey<FormState>();
  String restaurantStatus = "Active";
  final TextEditingController nameController = TextEditingController();
  final TextEditingController registerNumberController =
      TextEditingController();
  final TextEditingController seatingCapacityController =
      TextEditingController();
  String? selectedBrand;
  final List<String> brands = [
    "Beefbar",
    "Dinand",
    "Ferdi",
    "Novikov",
    "Philippe",
    "Bu Masoud",
    "Burger Inn",
    "Fatayer Al Tayer",
    "Namlet"
  ];

    void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Process the form submission
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Restaurant added successfully!')),
      );
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
                  "Admin",
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
                        builder: (context) => RestaurantChangepassword()));
                // Navigate to change password screen
              } else if (value == 'logout') {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
                // Perform logout action
              }
            },
            itemBuilder: (BuildContext context) => [
              // Title Item (Non-clickable)
              PopupMenuItem<String>(
                enabled: false,
                child: Text(
                  "Admin",
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
      body: Container(
         width: double.infinity,
        height: double.infinity,
        //color: Color.fromARGB(255, 207, 198, 198),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 200, 213, 219),
            image: DecorationImage(
                image: AssetImage("asset/background_image1.jpg"),
                fit: BoxFit.cover)),

        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Text("Add Restaurant",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white))),
                  SizedBox(height: 20),
              
                  // Restaurant Name
                  Center(
                    child: SizedBox(
                      width: 600,
                      child: TextFormField(
                        controller: nameController,
                        validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the restaurant name';
                    }
                    return null;
                  },
                        decoration: InputDecoration(
                          labelText: "Restaurant Name",labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.white,width: 10),
                            
                          ),                                         
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
              
                  // Register Number
                  Center(
                    child: SizedBox(
                      width: 600,
                      child: TextFormField(
                        controller: registerNumberController,
                        validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the restaurant register number';
                    }
                    return null;
                  },
                        decoration: InputDecoration(
                          labelText: "Register Number",labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
              
                  SizedBox(height: 20),
              
                  // Restaurant Status
                  Center(child: Text("Restaurant Status",style: TextStyle(color: Colors.white),)),
                  Center(
                    child: SizedBox(
                      width: 200,
                      child: Center(
                        child: Row(
                          children: [
                            Center(
                              child: Radio(
                                value: "Active",
                                groupValue: restaurantStatus,
                                onChanged: (value) {
                                  setState(() {
                                    restaurantStatus = value.toString();
                                  });
                                },
                              ),
                            ),
                            Center(child: Text("Active",style: TextStyle(color: Colors.white),)),
                            SizedBox(width: 20),
                            Center(
                              child: Radio(
                                value: "Inactive",
                                groupValue: restaurantStatus,
                                onChanged: (value) {
                                  setState(() {
                                    restaurantStatus = value.toString();
                                  });
                                },
                              ),
                            ),
                            Center(child: Text("Inactive",style: TextStyle(color: Colors.white),)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Brands Dropdown
                  SizedBox(
                      width: 1000, child: Center(child: Text("Select Brand",style:  TextStyle(color: Colors.white),))),
                  SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      width: 600,
                      child: DropdownButtonFormField<String>(
                        value: selectedBrand,
                        items: brands.map((brand) {
                          return DropdownMenuItem<String>(
                            value: brand,
                            child: Text(brand),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedBrand = value;
                          });
                        },
                        validator: (value) {
                    if (value == null) {
                      return 'Please select a brand';
                    }
                    return null;
                  },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Brand",labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
              
                  // Seating Capacity
                  Center(
                    child: SizedBox(
                      width: 600,
                      child: Center(
                        child: TextFormField(
                          controller: seatingCapacityController,
                          validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the seating capacity';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }
                    return null;
                  },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Seating Capacity",labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
              
                  // Submit Button
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        _submitForm();
                        // Handle form submission
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      ),
                      child: Text("ADD RESTAURANT",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
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
                                width: 1400,
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
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red)),
                          width: MediaQuery.of(context).size.width / 1.1,
                          height: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width / 1.1,
                                      40),
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
          ),
        ),
      ),
    );
  }
}
