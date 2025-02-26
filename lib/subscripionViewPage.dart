import 'package:flutter/material.dart';

class Subscripionviewpage extends StatelessWidget {
  const Subscripionviewpage({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Center(
            child: Text("No Subscription"),
          ),
        ),
      ),
    );
  }
}
