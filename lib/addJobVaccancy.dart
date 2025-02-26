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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
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
