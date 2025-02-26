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
      backgroundColor: Color(0xFFecf1f4),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Admin",style: TextStyle(fontFamily: 'Timesnewroman',fontSize: 22,fontWeight: FontWeight.bold),),
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
                          onPressed: (){}, child: Text("+ Add",style: TextStyle(color: Colors.black),))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
