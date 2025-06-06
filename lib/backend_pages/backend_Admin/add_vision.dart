import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminVisionPage extends StatefulWidget {
  @override
  _AdminVisionPageState createState() => _AdminVisionPageState();
}

class _AdminVisionPageState extends State<AdminVisionPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final CollectionReference aboutUsCollection =
      FirebaseFirestore.instance.collection('mission_vision');

  @override
  void initState() {
    super.initState();
    _loadAboutUs();
  }

  // Fetch existing data from Firestore
  void _loadAboutUs() async {
    DocumentSnapshot doc = await aboutUsCollection.doc('mission_vision_info').get();
    if (doc.exists) {
      var data = doc.data() as Map<String, dynamic>;
      setState(() {
        titleController.text = data['title'] ?? '';
        descriptionController.text = data['description'] ?? '';
      });
    }
  }

  // Save or update data in Firestore
  void _saveAboutUs() async {
    await aboutUsCollection.doc('mission_vision_info').set({
      'title': titleController.text,
      'description': descriptionController.text,
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Mission / Vision updated successfully!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Admin: Edit Mision / Vision")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: "Title"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: descriptionController,
              maxLines: 4,
              decoration: InputDecoration(labelText: "Description"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveAboutUs,
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
