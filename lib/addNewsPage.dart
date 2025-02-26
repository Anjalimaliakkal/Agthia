import 'package:flutter/material.dart';

class addNewsPage extends StatelessWidget {
  const addNewsPage({super.key});

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
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                      child: Text("Add News",style: TextStyle(fontSize: 20,fontFamily: 'Timesnewroman',fontWeight: FontWeight.bold),)),
                  SizedBox(height: 20,),
                  Text("Title",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
                  Container(
                    decoration:BoxDecoration(
                    border: Border.all(color: Colors.grey)
                    ),
                    height: 120,
                    child: TextFormField(
                      maxLines: null,
                      decoration: InputDecoration(
                        labelText: '',
                        border: InputBorder.none
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Content",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
                  Container(
                    decoration:BoxDecoration(
                        border: Border.all(color: Colors.grey)
                    ),
                    height: 120,
                    child: TextFormField(
                      maxLines: null,
                      decoration: InputDecoration(
                          labelText: '',
                          border: InputBorder.none
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                        onPressed: (){}, child: Text("Save",style: TextStyle(color: Colors.white),)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
