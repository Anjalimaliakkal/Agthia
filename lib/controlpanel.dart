import 'package:flutter/material.dart';

class Controlpanel extends StatelessWidget {
  const Controlpanel({super.key});

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
              Row(
                children: [
                  Text(
                    "Admin",
                    style: TextStyle(
                        fontFamily: 'Timesnewroman',
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Control Panel",
                    style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 70, 95, 108),
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
              //Text("Admin",style: TextStyle(fontFamily: 'Timesnewroman',fontSize: 22,fontWeight: FontWeight.bold),),
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
            ],
          ),
        ),
      ),
    );
  }
}
