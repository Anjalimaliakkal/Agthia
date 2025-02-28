import 'package:agthia/Admin_pages/Add_Restaurant.dart';
import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
import 'package:agthia/Restaurant_pages/Restaurant_viewdelivery.dart';
import 'package:agthia/Restaurant_pages/Restaurant_vieworders.dart';
import 'package:agthia/Restaurant_pages/delivery_allocation.dart';
import 'package:agthia/login.dart';
import 'package:agthia/Restaurant_pages/restaurant_home.dart';
import 'package:flutter/material.dart';

class AssignOrder extends StatefulWidget {
  const AssignOrder({super.key});

  @override
  State<AssignOrder> createState() => _AssignOrder();
}

class _AssignOrder extends State<AssignOrder> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController orderIdController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController itemcountController = TextEditingController();
  final TextEditingController itemnameController = TextEditingController();
  final TextEditingController shippingChargeController =
      TextEditingController();
  final TextEditingController totalPriceController = TextEditingController();
  //final TextEditingController paymentMethodController = TextEditingController();
  String? selectedpaymentmethod;
  final List<String> paymentMethod = [
    "COD",
    "UPI",
    "Credit/Debit/ATM Card",
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
                  "RESTAURANT",
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
                  "Restaurant",
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
                    "Restaurant",
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
                    MaterialPageRoute(builder: (context) => RestaurantHome()));
              },
            ),
            ListTile(
              title: Text("Add Restaurant",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddRestaurant()));
              },
            ),
            ListTile(
              title: Text("View Orders",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RestaurantVieworders()));
              },
            ),
            ListTile(
              title: Text("View Delivery Personnel",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RestaurantViewdelivery()));
              },
            ),
            ListTile(
              title: Text("Allocate Delivery Personnel",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DeliveryAllocation()));
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
            //     image: AssetImage("asset/image1.jpg"),
            //     fit: BoxFit.cover)/
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
                        child: Text("Assign Order",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                               ))),
                    SizedBox(height: 20),

                    Center(
                      child: SizedBox(
                        width: 600,
                        child: TextFormField(
                          controller: orderIdController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the order ID';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Order ID",
                            labelStyle: TextStyle(),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide( width: 10),
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
                              return 'Please enter the ordered address';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Address",
                            labelStyle: TextStyle(),
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
                          controller: itemcountController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the item count';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Item Count",
                            labelStyle: TextStyle(),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Center(
                      child: SizedBox(
                        width: 600,
                        child: TextFormField(
                          controller: addressController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the ordered address';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Address",
                            labelStyle: TextStyle(),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        width: 600,
                        child: TextFormField(
                          controller: itemnameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the item name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Item Name",
                            labelStyle: TextStyle(),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Center(
                      child: SizedBox(
                        width: 600,
                        child: TextFormField(
                          controller: shippingChargeController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the shipping charge';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Shipping Charge",
                            labelStyle: TextStyle(),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        width: 600,
                        child: TextFormField(
                          controller: totalPriceController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the total price';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Total Price",
                            labelStyle: TextStyle(),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),

                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: 20),
                    // Brands Dropdown
                    SizedBox(
                        width: 1000,
                        child: Center(
                            child: Text(
                          "Payment method",
                          style: TextStyle(),
                        ))),
                    SizedBox(height: 10),
                    Center(
                      child: SizedBox(
                        width: 600,
                        child: DropdownButtonFormField<String>(
                          value: selectedpaymentmethod,
                          items: paymentMethod.map((brand) {
                            return DropdownMenuItem<String>(
                              value: brand,
                              child: Text(brand),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedpaymentmethod = value;
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
                            labelText: "Payment Method",
                            labelStyle: TextStyle(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

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
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                        ),
                        child: Text("ASSIGN ORDER",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
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
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14),
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
                          Text("Copyright",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
