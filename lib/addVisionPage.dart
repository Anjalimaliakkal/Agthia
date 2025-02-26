import 'package:flutter/material.dart';

class AddVisionPage extends StatelessWidget {
  const AddVisionPage({super.key});

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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Add Vision",style: TextStyle(fontFamily: 'Timesnewroman',fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text("Vision",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
              SizedBox(height: 15,),
              SizedBox(
                width: 800,
                child: Container(
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
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )
                  ),
                  onPressed: (){}, child: Text("Save",style: TextStyle(color: Colors.white),))
            ],
          ),
        ),
      ),
    );
  }
}
