import 'package:flutter/material.dart';

class News1 extends StatelessWidget {
  const News1({super.key});

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
                  Text("Ferdi Restaurant Now Open in Kuwait",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),),
                  SizedBox(height: 30,),
                  Image(image: AssetImage('asset/ferdi1-news.jpg'),
                  width: 1000,
                  height: 500,
                  fit: BoxFit.contain,),
                  SizedBox(height: 30,),
                  Text("I had Ferdi for the first time back in 2013 when I visited a couple of friends who were studying in Paris. They were both regulars at Ferdi, a hole in the wall restaurant that was starting to become a hotspot for celebrities and a place to be seen during Paris Fashion Week and other high-profile events. I remember the second time I was having dinner there, Kim and Kanye were also there just a couple of tables away. It was surreal, mostly because everyone there was so casual about it.",style: TextStyle(fontSize: 18),)
              ,SizedBox(height: 20,),
              Text("But that was then, today Ferdi has become a popular tourist destination and they now have locations around the world as well as a spinoff brand called Dinand par Ferdi. They also just opened in Kuwait, and last night I was invited to try it out.",style: TextStyle(fontSize: 18),),
                SizedBox(height: 20,),
                Image(image: AssetImage("asset/ferdi2.jpg"),
                width: 1200,
                height: 500,
                
                fit: BoxFit.contain,),
                SizedBox(height: 30,),
                Text("The best way to describe Ferdi’s food is unpretentious comfort food. My usual order includes corn on the cob, mac & cheese, French fries and their famous cheeseburger. Nothing about their food is special, they don’t have the best cheeseburger in the world or the best fries, but when in Paris, it’s the combination of good simple food, decent prices, cozy space and the ambience that makes Ferdi, Ferdi. Not sure that concept works in Kuwait since we all have our favorite comfort food spots and we all definitely have our favorite burger places, but we’ll soon find out.",style: TextStyle(fontSize: 18),),
                SizedBox(height: 20,),
                Text("Ferdi Kuwait is located at JACC right next to White Robata. Their prices are similar to Paris with their Mac Ferdi’s Cheeseburger costing KD5.850 and KD2.000 for a side of fries. Reservations at the moment are required and as of this post, it looks like the next available date is May 29th. So good luck getting a table until the hype settles. ",style: TextStyle(fontSize: 18),),
                SizedBox(height: 30,)
                ],
                
              ),
            ),
          ),
        ),
    );
  }
}