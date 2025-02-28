import 'package:flutter/material.dart';

class News2 extends StatelessWidget {
  const News2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Center(
            child: Transform.translate(
              offset: Offset(-10.0, 0.0),
              child: Image(
                image: AssetImage("asset/logo_agthia.jpg"),
                height: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xFF282d37),
        ),
        body: 
        
        SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 600,
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text("Philippe – New High End Chinese Restaurant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),),
                  SizedBox(height: 30,),
                  Image(image: AssetImage('asset/philippe4.jpg'),
                  width: 1000,
                  height: 500,
                  fit: BoxFit.contain,),
                  SizedBox(height: 30,),
                  Text("Philippe is a New York-based high-end Chinese restaurant by Executive Chef Philippe Chow. They are opening their first location outside the US at JACC this coming Thursday, June 6th.",style: TextStyle(fontSize: 18),)
              ,SizedBox(height: 20,),
              Text("The restaurant is known for its sophisticated dining experience, and its New York location is a popular destination for celebrities and food enthusiasts. The cuisine is considered modern Beijing-style, and they are especially famous for their Peking duck and satays.",style: TextStyle(fontSize: 18),),
                SizedBox(height: 20,),
                Image(image: AssetImage("asset/philippe3.jpg"),
                width: 1200,
                height: 500,
                
                fit: BoxFit.contain,),
                SizedBox(height: 30,),
                Text("The reservation link is on their Instagram page, but there doesn’t seem to be any dates available. You could try your luck as a walk-in without a reservation since most restaurants in Kuwait tend to have a no-show rate of around 20-30%. @philippechow.kw",style: TextStyle(fontSize: 18),),
                SizedBox(height: 30,),
                
                ],
                
              ),
            ),
          ),
        ),
    );
  }
}