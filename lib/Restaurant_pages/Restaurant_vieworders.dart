import 'package:agthia/Restaurant_pages/Add_Restaurant.dart';
import 'package:agthia/Restaurant_pages/Restaurant_changepassword.dart';
import 'package:agthia/Restaurant_pages/Restaurant_viewdelivery.dart';
import 'package:agthia/Restaurant_pages/delivery_allocation.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:agthia/login.dart';
import 'package:agthia/Restaurant_pages/restaurant_home.dart';
import 'package:flutter/material.dart';

class RestaurantVieworders extends StatelessWidget {
  final List<Map<String, dynamic>> orders = [
    {
      'orderId': '243556',
      'address': 'Maliakkal',
      'totalItems': 1,
      'itemname':'Burger',
      'shippingCharge': 60.95,
      'totalPrice': 300.95,
      'paymentMethod': 'COD',
    },
    {
      'orderId': '217867',
      'address': 'Thattaruparambil',
      'totalItems': 4,
      'itemname':'Pizza',
      'shippingCharge': 50.0,
      'totalPrice': 250.90,
      'paymentMethod': 'COD',
    }
  ];
   RestaurantVieworders({super.key});

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
                  child: Icon(Icons.person, color: Colors.white)), // Profile Icon
                SizedBox(width: 5),
                Text(
                  "RESTAURANT",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onSelected: (value) {
              if (value == 'change_password') {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RestaurantChangepassword()));
                // Navigate to change password screen
              } else if (value == 'logout') {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RestaurantHome()));
              },
            ),
             ListTile(
              title: Text("Add Restaurant",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddRestaurant()));
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
          image: DecorationImage(image: AssetImage("asset/background_image1.jpg"),
          fit: BoxFit.cover)
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'View Orders',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 50,
                  dataRowHeight: 200, // Adjust row height
                  headingRowColor: MaterialStateColor.resolveWith(
                      (states) => const Color.fromARGB(255, 178, 208, 223)),
                  headingTextStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  dataRowColor: MaterialStateColor.resolveWith(
                      (states) => Colors.grey.shade100),
                  border: TableBorder.all(color: Colors.black54, width: 0.5),
                  columns: [
                    DataColumn(label: Text('Order ID')),
                    DataColumn(label: Text('Address')),
                    DataColumn(label: Text('Item count')),
                    DataColumn(label: Text('Item Name')),
                    DataColumn(label: Text('Shipping')),
                    DataColumn(label: Text('Total Price')),
                    DataColumn(label: Text('Payment')),
                    DataColumn(label: Text('Status')),
                  ],
                  rows: orders.map((order) {
                    return DataRow(cells: [
                      DataCell(Text(order['orderId'].toString())),
                      DataCell(Text(order['address'])),
                      DataCell(Text(order['totalItems'].toString())),
                      DataCell(Text(order['itemname'])),
                      DataCell(Text("\$${order['shippingCharge']}")),
                      DataCell(Text("\$${order['totalPrice']}")),
                      DataCell(Text(order['paymentMethod'])),
                      DataCell(Column(
                        children: [
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: BeveledRectangleBorder(),
                                backgroundColor: Colors.green),
                            child: Text('Place Order'),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: BeveledRectangleBorder(),
                                backgroundColor: Colors.red),
                            child: Text('Cancel'),
                          ),
                        ],
                      )),
                    ]);
                  }).toList(),
                ),
              ),
              SizedBox(height: 100),
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
      ),

    );
  }
}