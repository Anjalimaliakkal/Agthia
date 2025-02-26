import 'package:flutter/material.dart';

class AboutUsAdd extends StatelessWidget {
  const AboutUsAdd({super.key});

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
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(top: BorderSide(color: Colors.blue,width: 4),),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text("Add about",style: TextStyle(fontFamily: 'Timesnewroman',fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text("About (first paragraph)",style: TextStyle(fontSize: 19,fontFamily: 'Barlowthin',fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,width: 1)
                        ),
                        child: TextFormField(
                          maxLines: null,
                          decoration: InputDecoration(
                              labelText:'',
                              //contentPadding: EdgeInsets.all(2),
                              border: InputBorder.none
                          ),
                          textAlignVertical: TextAlignVertical.top,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("About (second paragraph) (optional)",style: TextStyle(fontSize: 19,fontFamily: 'Barlowthin',fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,width: 1)
                        ),
                        child: TextFormField(
                          maxLines: null,
                          decoration: InputDecoration(
                              labelText: '',
                              border: InputBorder.none
                          ),
                          textAlignVertical: TextAlignVertical.top,
                        ),
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                              )
                          ),
                          onPressed: (){}, child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 18),))

                    ],
                  ),
                )
              )],
          ),
        ),
      ),
    );
  }
}
