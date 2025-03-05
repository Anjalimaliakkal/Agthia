import 'package:agthia/DeliveryPersonnel_pages/delivery_changepassword.dart';
import 'package:agthia/DeliveryPersonnel_pages/delivery_home.dart';
import 'package:agthia/DeliveryPersonnel_pages/delivery_neworders.dart';
import 'package:agthia/DeliveryPersonnel_pages/delivery_previousorders.dart';
import 'package:agthia/login.dart';
import 'package:flutter/material.dart';

class AddDelivery extends StatefulWidget {
  const AddDelivery({super.key});

  @override
  State<AddDelivery> createState() => _AddDeliveryState();
}

class _AddDeliveryState extends State<AddDelivery> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController =
      TextEditingController();
  final TextEditingController seatingCapacityController =
      TextEditingController();

  

    void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Process the form submission
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Delivery Personal added successfully only after admin approval!')),
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
                  "DELIVERY PERSONNEL",
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
                        builder: (context) => DeliveryChangepassword()));
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
                  "Delivery Personnel",
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
                    "Delivery Personnel",
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryHome()));
              },
            ),
            ListTile(
              title: Text("Add Delivery Personnel",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddDelivery()));
              },
            ),
            ListTile(
              title: Text("New Orders",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DeliveryNeworders()));
              },
            ),
            ListTile(
              title: Text("Previous Orders",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DeliveryPreviousorders()));
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
            // image: DecorationImage(
            //     image: AssetImage("asset/background_image1.jpg"),
            //     fit: BoxFit.cover)
            ),

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
                      child: Text("Add Delivery Personnel",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold,))),
                  SizedBox(height: 20),
              
                  
                  Center(
                    child: SizedBox(
                      width: 600,
                      child: TextFormField(
                        controller: nameController,
                        validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the name';
                    }
                    return null;
                  },
                        decoration: InputDecoration(
                          labelText: "Name",labelStyle: TextStyle(),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.white,width: 10),
                            
                          ),                                         
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
              
                 
                  Center(
                    child: SizedBox(
                      width: 600,
                      child: TextFormField(
                        controller: addressController,
                        validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the address';
                    }
                    return null;
                  },
                        decoration: InputDecoration(
                          labelText: "Address",labelStyle: TextStyle(),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
              Center(
                    child: SizedBox(
                      width: 600,
                      child: TextFormField(
                        controller: addressController,
                        validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the Phone number';
                    }
                    return null;
                  },
                        decoration: InputDecoration(
                          labelText: "Phone number",labelStyle: TextStyle(),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
              Center(
                    child: SizedBox(
                      width: 600,
                      child: TextFormField(
                        controller: addressController,
                        validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the Driving License Number';
                    }
                    return null;
                  },
                        decoration: InputDecoration(
                          labelText: "Driving License Number",labelStyle: TextStyle(),
                          border: OutlineInputBorder(),
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
                      child: Text("Add Delivery Personnel",
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