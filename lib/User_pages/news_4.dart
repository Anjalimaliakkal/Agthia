import 'package:flutter/material.dart';

class News4 extends StatelessWidget {
  const News4({super.key});

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
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 600,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Sneak Peek: Beefbar Opens Next Week",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Image(
                  image: AssetImage('asset/beefbar1_news.jpg'),
                  width: 1000,
                  height: 500,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Beefbar, the renowned Monte-Carlo meat-focused restaurant, is opening in Kuwait next week, and I got an exclusive sneak peek. Known for its global accolades, including a Michelin star for its Hong Kong location, Beefbar offers a diverse menu with street food, main courses, and sides, categorized into three sections: Beef, Reef, and Leaf.",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Beefbar is opening at JACC in Kuwait where they’ve taken a large location near the breakfast spot, Cocoa Room. When I visited, workers were still busy getting the space in shipshape for next week’s opening. Most of the furniture was covered to protect it from dust, but I managed to uncover a few pieces to try and capture the vibe of the place accurately.",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: AssetImage("asset/beefbar2_news.jpg"),
                  width: 1200,
                  height: 500,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "When they open next week, they’ll start with dinner service only, with lunch service to follow later. The seating looked incredibly comfortable, with soft, and luxurious feeling materials. There’s also a private room that accommodates up to 14 people.",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                 Image(
                  image: AssetImage("asset/beefbar3_news.jpg"),
                  width: 1200,
                  height: 500,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "The owners of Beefbar in Kuwait are the same group behind other high-end international concepts, including Ferdi, Philippe by Philippe Chow, and the upcoming Novikov, set to open early next year.",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
