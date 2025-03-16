// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class ViewApplications extends StatefulWidget {
//   @override
//   _ViewApplicationsState createState() => _ViewApplicationsState();
// }

// class _ViewApplicationsState extends State<ViewApplications> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Job Applications"),
//         backgroundColor: Color(0xFF282d37),
//       ),
//       body: StreamBuilder(
//   stream: FirebaseFirestore.instance.collection('job_applications').snapshots(),
//   builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//       return Center(child: CircularProgressIndicator());
//     }

    
//     if (snapshot.hasData) {
//       print("Fetched ${snapshot.data!.docs.length} applications");
//       for (var doc in snapshot.data!.docs) {
//         print("Document: ${doc.data()}");
//       }
//     }

//     if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//       return Center(child: Text("No applications found"));
//     }
    
//     return ListView.builder(
//       itemCount: snapshot.data!.docs.length,
//       itemBuilder: (context, index) {
//         var application = snapshot.data!.docs[index];
//         return ListTile(
//           title: Text(application['applicantName'] ?? "Unknown"),
//           subtitle: Text("Job: ${application['jobTitle'] ?? 'Not specified'}"),
//         );
//       },
//     );
//   },
// )

//     );
//   }
// }


// import 'package:agthia/Admin_pages/addBrands.dart';
// import 'package:agthia/Admin_pages/aboutUsHomePage.dart';
// import 'package:agthia/Admin_pages/addJobVaccancy.dart';
// import 'package:agthia/Admin_pages/addNewsPage.dart';
// import 'package:agthia/Admin_pages/addWordsfromChairman.dart';
// import 'package:agthia/Admin_pages/admin_home.dart';
// import 'package:agthia/Admin_pages/approval_delivery.dart';
// import 'package:agthia/Admin_pages/approval_restaurant.dart';
// import 'package:agthia/Admin_pages/ourpeopleHomePage.dart';
// import 'package:agthia/Admin_pages/visionhomepage.dart';
// import 'package:flutter/material.dart';

// class Subscripionviewpage extends StatelessWidget {
//   const Subscripionviewpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           iconTheme: IconThemeData(color: Colors.white),
//           //leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),
//           title: Center(
//             child: Transform.translate(
//               offset: Offset(12.0, 0.0),
//               child: Image.asset(
//                 'asset/logo_agthia.jpg',
//                 height: 43, // Adjust height based on your design
//                 fit: BoxFit.contain, // Ensures the image fits well
//               ),
//             ),
//           ),
//           backgroundColor: Color(0xFF282d37),
//           actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings))],
//         ),
//         backgroundColor:  const Color.fromARGB(255, 189, 195, 181),
//         drawer: Drawer(
//         width: 200,
//         backgroundColor: Color(0xFF282d37),
//         child: ListView(
//           padding: EdgeInsets.all(12),
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(color: Color(0xFF282d37)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Colors.white,
//                     child: Icon(Icons.person),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     "Admin",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   )
//                 ],
//               ),
//             ),
//             ListTile(
//               title: Text("Home",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => AdminHome()));
//               },
//             ),
//             ExpansionTile(
//               //tilePadding: const EdgeInsets.only(left: 15, right: 15),
//               title: Text(
//                 "About us",
//                 style:
//                     TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               children: [
//                 ListTile(
//                   title: Text(
//                     "About",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => AboutUsHomePage()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Our People",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Ourpeoplehomepage()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Mission/Vision",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Visionhomepage()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Word from Chairman",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => Addwordsfromchairman()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//               ],
//             ),
//             ListTile(
//               title: Text("Media",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => addNewsPage()));
//               },
//             ),
//             ListTile(
//               title: Text("Add Brands",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Addbrands()));
//               },
//             ),
//             ExpansionTile(
//               //tilePadding: const EdgeInsets.only(left: 15, right: 15),
//               title: Text(
//                 "Approvals",
//                 style:
//                     TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               children: [
//                 ListTile(
//                   title: Text(
//                     "Restaurant",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => ApprovalRestaurant()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Delivery Personnel",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => ApprovalDelivery()));
//                   },
//                   contentPadding: EdgeInsets.only(left: 60),
//                 ),
                
//               ],
//             ),
//             ListTile(
//               title: Text("Subscriptions",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Subscripionviewpage()));
//               },
//             ),
//             ListTile(
//               title: Text("Careers",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white)),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => AddJobVaccancy()));
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           color: Colors.white,
//           width: MediaQuery.of(context).size.width,
//           height: 50,
//           child: Center(
//             child: Text("No Subscription"),
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'package:agthia/Admin_pages/adminChangepassword.dart';
// import 'package:agthia/backend_pages/backend_new/loginpage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class Viewapplications extends StatelessWidget {
//   const Viewapplications({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.white),
//         //leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),
//         title: Center(
//           child: Transform.translate(
//             offset: Offset(12.0, 0.0),
//             child: Image.asset(
//               'asset/logo_agthia.jpg',
//               height: 43, // Adjust height based on your design
//               fit: BoxFit.contain, // Ensures the image fits well
//             ),
//           ),
//         ),
//         backgroundColor: Color(0xFF282d37),
//         actions: [
//           PopupMenuButton<String>(
//             child: Row(
//               children: [
//                 CircleAvatar(
//                     backgroundColor: const Color.fromARGB(255, 188, 187, 187),
//                     child: Icon(Icons.person,
//                         color: Colors.white)), // Profile Icon
//                 SizedBox(width: 5),
//                 Text(
//                   "ADMIN",
//                   style: TextStyle(
//                       color: Colors.white, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(width: 5),
//                 Icon(Icons.arrow_drop_down)
//               ],
//             ),
//             onSelected: (value) {
//               if (value == 'change_password') {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => Adminchangepassword()));
//                 // Navigate to change password screen
//               } else if (value == 'logout') {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => LoginPage()));
//                 // Perform logout action
//               }
//             },
//             itemBuilder: (BuildContext context) => [
//               // Title Item (Non-clickable)
//               PopupMenuItem<String>(
//                 enabled: false,
//                 child: Text(
//                   "ADMIN",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//               PopupMenuDivider(),

//               // Change Password
//               PopupMenuItem<String>(
//                 value: 'change_password',
//                 child: Row(
//                   children: [
//                     Icon(Icons.lock, color: Colors.black),
//                     SizedBox(width: 10),
//                     Text("Change Password"),
//                   ],
//                 ),
//               ),

//               // Logout
//               PopupMenuItem<String>(
//                 value: 'logout',
//                 child: Row(
//                   children: [
//                     Icon(Icons.logout, color: Colors.black),
//                     SizedBox(width: 10),
//                     Text("Logout"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(width: 10),
//         ],
//         // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
//       ),
//       backgroundColor: const Color.fromARGB(255, 189, 195, 181),
      
//       body: StreamBuilder<QuerySnapshot>(
//   stream: FirebaseFirestore.instance
//       .collection('job_applications')
//       .orderBy('submittedAt', descending: true) // Order by date
//       .snapshots(),
//   builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//       return Center(child: CircularProgressIndicator());
//     }

//     if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//       return Center(child: Text("No Applicants found."));
//     }

//     var job_applications = snapshot.data!.docs;
//     return ListView.builder(
//       itemCount: job_applications.length,
//       itemBuilder: (context, index) {
//         var job_application = job_applications[index];
//         String name = job_application['fullName'] ?? 'No Name';
//        String address = job_application['address'] ?? 'No Address';
//        String phone = job_application['phone'].toString();
//        String email = job_application['email'] ?? 'No email';
//        String jobId = job_application['jobId'] ?? 'No jobId';
//        String jobTitle = job_application['jobTitle'] ?? 'No job Title';

//        String resumeFileName = job_application['resumeFileName'] ?? 'No Resume';

        
//         Timestamp? timestamp = job_application['submittedAt'] as Timestamp?;
//         String date = timestamp != null ? timestamp.toDate().toString() : 'No Date Available';

//         return Card(
//           margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//           elevation: 3,
//           child: Padding(
//             padding: EdgeInsets.all(10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Job ID: $jobId", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                 Text("Job Title: $jobTitle", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                 Text("Name: $name"),
//                 Text("Adress: $address"),
//                 Text("Phone Number: $phone"),
//                 Text("Email: $email"),
                
//                 Text("Resume: $resumeFileName"),
//                 Text("Submitted At: $date"),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   },
// ),

//     );
//   }
// }


import 'package:agthia/Admin_pages/adminChangepassword.dart';
import 'package:agthia/backend_pages/backend_new/loginpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import for opening links

class ViewApplications extends StatelessWidget {
  const ViewApplications({super.key});

  // Function to open URL
  void _openResume(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Could not open the resume URL.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Center(
          child: Transform.translate(
            offset: Offset(12.0, 0.0),
            child: Image.asset(
              'asset/logo_agthia.jpg',
              height: 43, 
              fit: BoxFit.contain, 
            ),
          ),
        ),
        backgroundColor: Color(0xFF282d37),
        actions: [
          PopupMenuButton<String>(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 188, 187, 187),
                  child: Icon(Icons.person, color: Colors.white),
                ),
                SizedBox(width: 5),
                Text(
                  "ADMIN",
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
                        builder: (context) => Adminchangepassword()));
              } else if (value == 'logout') {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                enabled: false,
                child: Text(
                  "ADMIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              PopupMenuDivider(),
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
      backgroundColor: const Color.fromARGB(255, 189, 195, 181),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('job_applications')
            .orderBy('submittedAt', descending: true) // Order by date
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text("No Applicants found."));
          }

          var jobApplications = snapshot.data!.docs;
          return ListView.builder(
            itemCount: jobApplications.length,
            itemBuilder: (context, index) {
              var jobApplication = jobApplications[index];
              String name = jobApplication['fullName'] ?? 'No Name';
              String address = jobApplication['address'] ?? 'No Address';
              String phone = jobApplication['phone'].toString();
              String email = jobApplication['email'] ?? 'No email';
              String jobId = jobApplication['jobId'] ?? 'No jobId';
              String jobTitle = jobApplication['jobTitle'] ?? 'No job Title';
              //String resumeFileName = jobApplication['resumeFileName'] ?? ''; // Get resume URL

              Timestamp? timestamp = jobApplication['submittedAt'] as Timestamp?;
              String date = timestamp != null ? timestamp.toDate().toString() : 'No Date Available';

              return Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Job ID: $jobId", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("Job Title: $jobTitle", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("Name: $name"),
                      Text("Address: $address"),
                      Text("Phone Number: $phone"),
                      Text("Email: $email"),
                      Text("Submitted At: $date"),
                      
                      // View Resume Button
                      // resumeFileName.isNotEmpty
                      //     ? TextButton(
                      //         onPressed: () => _openResume(resumeFileName),
                      //         child: Text("View Resume", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                      //       )
                      //     : Text("No Resume Available", style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

