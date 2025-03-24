// import 'package:agthia/Admin_pages/addBrands.dart';
// import 'package:agthia/Restaurant_pages/Add_Restaurant.dart';
// import 'package:agthia/Admin_pages/aboutUsHomePage.dart';
// import 'package:agthia/Admin_pages/addNewsPage.dart';
// import 'package:agthia/Admin_pages/addWordsfromChairman.dart';
// import 'package:agthia/Admin_pages/admin_home.dart';
// import 'package:agthia/Admin_pages/approval_delivery.dart';
// import 'package:agthia/Admin_pages/approval_restaurant.dart';
// import 'package:agthia/Admin_pages/ourpeopleHomePage.dart';
// import 'package:agthia/Admin_pages/subscripionViewPage.dart';
// import 'package:agthia/Admin_pages/visionhomepage.dart';
// import 'package:flutter/material.dart';

// class AddJobVaccancy extends StatefulWidget {
//    AddJobVaccancy({super.key});

//   @override
//   State<AddJobVaccancy> createState() => _AddJobVaccancyState();
// }

// class _AddJobVaccancyState extends State<AddJobVaccancy> {
//   String? selectedOption;

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
//         actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings))],
//       ),
//       drawer: Drawer(
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
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 207, 216, 224),
//                 borderRadius: BorderRadius.circular(9)
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Add Job Vaccancy",style: TextStyle(fontSize: 20,fontFamily: 'Timesnewroman',fontWeight: FontWeight.bold),),
//                   SizedBox(height: 15,),
//                   Text("Brand",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                   SizedBox(height: 5,),
//                   Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey,width: 1)
//                     ),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                         labelText: 'Brand',
//                         border: InputBorder.none,
//                         contentPadding: EdgeInsets.all(5)
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   Text("Department",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                   SizedBox(height: 5,),
//                   Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey,width: 1)
//                     ),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                           labelText: 'Department',
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.all(5)
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   Text("Job title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                   SizedBox(height: 5,),
//                   Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey,width: 1)
//                     ),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                           labelText: 'Job Title',
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.all(5)
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   Text("Job Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                   SizedBox(height: 5,),
//                   Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey,width: 1)
//                     ),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                           labelText: 'Job Code',
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.all(5)
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   Text("Job Description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                   SizedBox(height: 5,),
//                   Container(
//                     height: 150,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey,width: 1)
//                     ),
//                     child: TextFormField(
//                       maxLines: null,
//                       decoration: InputDecoration(
//                           labelText: 'Job Description',
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.all(5),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   Text("Job Responsiblities",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                   SizedBox(height: 5,),
//                   Container(
//                     height: 150,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey,width: 1)
//                     ),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                           labelText: 'Department',
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.all(5)
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   Text("Job Requirements",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                   SizedBox(height: 5,),
//                   Container(
//                     height: 150,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey,width: 1)
//                     ),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                           labelText: 'Job Requirements',
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.all(5)
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   Text("Salary Range",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                   SizedBox(height: 5,),
//                   Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey,width: 1)
//                     ),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                           labelText: 'Salary Range',
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.all(5)
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   Text("Age Limit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                   SizedBox(height: 5,),
//                   Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey,width: 1)
//                     ),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                           labelText: 'Age Limit',
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.all(5)
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   Text("Employment Type",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                   SizedBox(height: 5,),
//                   Container(
//                     height: 50,
//                     padding: EdgeInsets.symmetric(horizontal: 8),
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey, width: 1),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: DropdownButton<String>(
//                       value: selectedOption,
//                       hint: Text('Select Option'),
//                       isExpanded: true, // Makes dropdown take the full width
//                       underline: SizedBox(), // Removes default underline
//                       items: <String>['Permanent', 'Part-Time', 'Intern']
//                           .map((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           selectedOption = newValue;
//                         });
//                       },
//                     ),
//                   )
//                   ,
//                   SizedBox(height: 10,),
//                   Text("Place",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                   SizedBox(height: 5,),
//                   Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey,width: 1)
//                     ),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                           labelText: 'Place',
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.all(5)
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: Container(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//                 backgroundColor: Colors.blue
//               ),
//                 onPressed: (){}, child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 15),)),
//             SizedBox(width: 10,),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//                     backgroundColor: Colors.blue
//                 ),
//                 onPressed: (){}, child: Text("      View \nVaccancies",style: TextStyle(color: Colors.white,fontSize: 15),)),
//             SizedBox(width: 10,),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//                     backgroundColor: Colors.blue
//                 ),
//                 onPressed: (){}, child: Text("      View \nApplication",style: TextStyle(color: Colors.white,fontSize: 15),))
//           ],
//         ),
//       ),
//     );

//   }
// }


import 'package:agthia/Admin_pages/aboutUsHomePage.dart';
import 'package:agthia/Admin_pages/addBrands.dart';
import 'package:agthia/Admin_pages/addNewsPage.dart';
import 'package:agthia/Admin_pages/addWordsfromChairman.dart';
import 'package:agthia/Admin_pages/admin_home.dart';
import 'package:agthia/Admin_pages/approval_delivery.dart';
import 'package:agthia/Admin_pages/approval_restaurant.dart';
import 'package:agthia/Admin_pages/ourpeopleHomePage.dart';
import 'package:agthia/Admin_pages/subscripionViewPage.dart';
import 'package:agthia/Admin_pages/viewDelivery.dart';
import 'package:agthia/Admin_pages/viewRestaurants.dart';
import 'package:agthia/Admin_pages/viewapplications.dart';
import 'package:agthia/Admin_pages/viewbrands.dart';
import 'package:agthia/Admin_pages/visionhomepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddJobVaccancy extends StatefulWidget {
   AddJobVaccancy({super.key});

  @override
  State<AddJobVaccancy> createState() => _AddJobVaccancyState();
}

class _AddJobVaccancyState extends State<AddJobVaccancy> {
 String? employmentType;
final TextEditingController brandController = TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  final TextEditingController jobTitleController = TextEditingController();
  final TextEditingController jobCodeController = TextEditingController();
  final TextEditingController jobDescriptionController = TextEditingController();
  final TextEditingController jobResponsibilitiesController = TextEditingController();
  final TextEditingController jobRequirementsController = TextEditingController();
  final TextEditingController salaryRangeController = TextEditingController();
  final TextEditingController ageLimitController = TextEditingController();
  final TextEditingController placeController = TextEditingController();
  void saveJobDetails() async {
    if (brandController.text.isEmpty ||
        departmentController.text.isEmpty ||
        jobTitleController.text.isEmpty ||
        jobCodeController.text.isEmpty ||
        jobDescriptionController.text.isEmpty ||
        jobResponsibilitiesController.text.isEmpty ||
        jobRequirementsController.text.isEmpty ||
        salaryRangeController.text.isEmpty ||
        ageLimitController.text.isEmpty ||
        placeController.text.isEmpty ||
        employmentType == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill all fields'))
      );
      return;
    }

    try {
      await FirebaseFirestore.instance.collection('job_vacancies').add({
        'brand': brandController.text,
        'department': departmentController.text,
        'jobTitle': jobTitleController.text,
        'jobCode': jobCodeController.text,
        'jobDescription': jobDescriptionController.text,
        'jobResponsibilities': jobResponsibilitiesController.text,
        'jobRequirements': jobRequirementsController.text,
        'salaryRange': salaryRangeController.text,
        'ageLimit': ageLimitController.text,
        'employmentType': employmentType,
        'place': placeController.text,
        'createdAt': FieldValue.serverTimestamp(), 
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Job added successfully'))
      );

      
      brandController.clear();
      departmentController.clear();
      jobTitleController.clear();
      jobCodeController.clear();
      jobDescriptionController.clear();
      jobResponsibilitiesController.clear();
      jobRequirementsController.clear();
      salaryRangeController.clear();
      ageLimitController.clear();
      placeController.clear();
      setState(() {
        employmentType = null;
      });

    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to add job: $e'))
      );
    }
  }
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
        // actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings))],
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
            // ListTile(
            //   title: Text("Manage Brands",
            //       style: TextStyle(
            //           fontWeight: FontWeight.bold, color: Colors.white)),
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => Addbrands()));
            //   },
            // ),
            ExpansionTile(
              //tilePadding: const EdgeInsets.only(left: 15, right: 15),
              title: Text(
                "Approvals",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              children: [
                ListTile(
                  title: Text(
                    "Restaurant",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ApprovalRestaurant()));
                  },
                  contentPadding: EdgeInsets.only(left: 60),
                ),
                ListTile(
                  title: Text(
                    "Delivery Personnel",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ApprovalDelivery()));
                  },
                  contentPadding: EdgeInsets.only(left: 60),
                ),
                
              ],
            ),
            ListTile(
              title: Text("View Restaurants",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Viewrestaurants()));
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
                        builder: (context) => Viewdelivery()));
              },
            ),
          // ListTile(
          //     title: Text("View Brands",
          //         style: TextStyle(
          //             fontWeight: FontWeight.bold, color: Colors.white)),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => Viewbrands()));
          //     },
          //   ),
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
                      controller: brandController,
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
                      controller: departmentController,
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
                      controller: jobTitleController,
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
                      controller: jobCodeController,
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
                      controller: jobDescriptionController,
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
                      controller: jobResponsibilitiesController,
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
                      controller: jobRequirementsController,
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
                      controller: salaryRangeController,
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
                      controller: ageLimitController,
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
                    child:   DropdownButton<String>(
              value: employmentType,
              hint: Text("Select Employment Type"),
              onChanged: (String? newValue) {
                setState(() {
                  employmentType = newValue;
                });
              },
              items: ["Permanent", "Part-Time", "Intern"].map((String value) {
                return DropdownMenuItem<String>(value: value, child: Text(value));
              }).toList(),
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
                      controller: placeController,
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
                onPressed: saveJobDetails, child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 15),)),
            SizedBox(width: 10,),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            //         backgroundColor: Colors.blue
            //     ),
            //     onPressed: (){}, child: Text("      View \nVaccancies",style: TextStyle(color: Colors.white,fontSize: 15),)),
            // SizedBox(width: 10,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    backgroundColor: Colors.blue
                ),
                onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => ViewApplications()));
                }, child: Text("      View Applications",style: TextStyle(color: Colors.white,fontSize: 15),))
          ],
        ),
      ),
    );

  }
}
