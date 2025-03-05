// import 'package:flutter/material.dart';

// class AddVisionPage extends StatelessWidget {
//   const AddVisionPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.white),
//         //leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),
//         title: Center(
//           child: Transform.translate(
//             offset: Offset(12.0, 0.0),
//             child: Image.asset(
//               'asset/logo_agthia.jpg',
//               height: 43, // Adjust height based on your design
//               fit: BoxFit.contain, // Ensures the image fits well
//             ),
//           ),
//         ),
//         backgroundColor: Color(0xFF282d37),
//         actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings))],
//       ),
//       body: Container(
//         child: Padding(
//           padding: const EdgeInsets.all(15),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("Add Vision",style: TextStyle(fontFamily: 'Timesnewroman',fontSize: 20,fontWeight: FontWeight.bold),),
//               SizedBox(height: 20,),
//               Text("Vision",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
//               SizedBox(height: 15,),
//               SizedBox(
//                 width: 800,
//                 child: Container(
//                   height: 150,
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey,width: 1)
//                   ),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         labelText: '',
//                         border: InputBorder.none,
//                         contentPadding: EdgeInsets.all(5)
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20,),
//               ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(5),
//                       )
//                   ),
//                   onPressed: (){}, child: Text("Save",style: TextStyle(color: Colors.white),))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:agthia/User_pages/controller/missionandvisioncontroller.dart';
import 'package:flutter/material.dart';

class AddVisionPage extends StatelessWidget {
  AddVisionPage({super.key});

  final TextEditingController _visionController = TextEditingController();
  final MissionAndVisionController _controller = MissionAndVisionController();

  Future<void> _saveVision(BuildContext context) async {
    try {
      await _controller.updateVision(_visionController.text);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Vision saved successfully!')),
      );
      _visionController.clear();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Center(
          child: Transform.translate(
            offset: const Offset(12.0, 0.0),
            child: Image.asset(
              'asset/logo_agthia.jpg',
              height: 43,
              fit: BoxFit.contain,
            ),
          ),
        ),
        backgroundColor: const Color(0xFF282d37),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Add Vision",
              style: TextStyle(
                fontFamily: 'Timesnewroman',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Vision",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 800,
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: TextFormField(
                  controller: _visionController,
                  maxLines: null,
                  decoration: const InputDecoration(
                    labelText: '',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () async {
                await _saveVision(context);
              },
              child: const Text(
                "Save",
                style: TextStyle(color: Colors.white),

              ),
            ),
          ],
        ),
      ),
    );
  }
}