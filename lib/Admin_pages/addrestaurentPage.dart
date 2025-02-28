import 'package:flutter/material.dart';

class Addrestaurentpage extends StatelessWidget {
  const Addrestaurentpage({super.key});

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
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Add Restaurent",style: TextStyle(fontFamily: 'Timesnewroman',fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text("Upload logo",style: TextStyle(fontSize: 16),),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: '',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(5)
                  ),
                ),
              ),SizedBox(height: 20,),
              Text("Upload image",style: TextStyle(fontSize: 16)),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: '',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(5)
                  ),
                ),
              ),SizedBox(height: 20,),
              Text("Name",style: TextStyle(fontSize: 16)),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: '',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(5)
                  ),
                ),
              ),SizedBox(height: 20,),
              Text("Brand Type",style: TextStyle(fontSize: 16)),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: '',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(5)
                  ),
                ),
              ),SizedBox(height: 20,),
              Text("Reservation URL",style: TextStyle(fontSize: 16)),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: '',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(5)
                  ),
                ),
              ),SizedBox(height: 20,),
              Text("Instgram URL",style: TextStyle(fontSize: 16)),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: '',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(5)
                  ),
                ),
              ),SizedBox(height: 20,),
              Text("Facebook URL",style: TextStyle(fontSize: 16)),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: '',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(5)
                  ),
                ),
              ),SizedBox(height: 20,),
              Text("Twitter URL",style: TextStyle(fontSize: 16)),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: '',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(5)
                  ),
                ),
              ),SizedBox(height: 20,),
              Text("Description (first paragraph)",style: TextStyle(fontSize: 16)),
              Container(
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: '',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(5)
                  ),
                ),
              ),SizedBox(height: 20,),
              Text("Description (second paragraph)",style: TextStyle(fontSize: 16)),
              Container(
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 1)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: '',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(5)
                  ),
                ),
              ),SizedBox(height: 20,),
            ],
          ),
        ),
      ) ,
    );
  }
}
