import 'package:flutter/material.dart';

class News3 extends StatelessWidget {
  const News3({super.key});

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
                  Text("Beefbar Coming to Kuwait",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),),
                  SizedBox(height: 30,),
                  Image(image: AssetImage('asset/beefbar3.jpg'),
                  width: 1000,
                  height: 500,
                  fit: BoxFit.contain,),
                  SizedBox(height: 30,),
                  Text("I was just informed by a reliable source that Beefbar, the popular meat focused restaurant originally from Montecarlo is coming to Kuwait. I don’t have a location or date yet, only that they have now signed with a local partner.",style: TextStyle(fontSize: 18),)
              ,SizedBox(height: 20,),
              Text("Beefbar is already available in Dubai and Riyadh so we aren’t going to have the first location in the Gulf but, it’s pretty cool that restaurants like Roka and now Beefbar are entering the market.",style: TextStyle(fontSize: 18),),
                SizedBox(height: 30,),
                // Image(image: AssetImage("asset/philippe3.jpg"),
                // width: 1200,
                // height: 500,
                
                // fit: BoxFit.contain,),
                // SizedBox(height: 30,),
                // Text("The reservation link is on their Instagram page, but there doesn’t seem to be any dates available. You could try your luck as a walk-in without a reservation since most restaurants in Kuwait tend to have a no-show rate of around 20-30%. @philippechow.kw",style: TextStyle(fontSize: 18),),
                // SizedBox(height: 30,),
                
                ],
                
              ),
            ),
          ),
        ),
    );
  }
}