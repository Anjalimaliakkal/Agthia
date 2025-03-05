import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewApplications extends StatefulWidget {
  @override
  _ViewApplicationsState createState() => _ViewApplicationsState();
}

class _ViewApplicationsState extends State<ViewApplications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Job Applications"),
        backgroundColor: Color(0xFF282d37),
      ),
      body: StreamBuilder(
  stream: FirebaseFirestore.instance.collection('job_applications').snapshots(),
  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return Center(child: CircularProgressIndicator());
    }

    
    if (snapshot.hasData) {
      print("Fetched ${snapshot.data!.docs.length} applications");
      for (var doc in snapshot.data!.docs) {
        print("Document: ${doc.data()}");
      }
    }

    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
      return Center(child: Text("No applications found"));
    }
    
    return ListView.builder(
      itemCount: snapshot.data!.docs.length,
      itemBuilder: (context, index) {
        var application = snapshot.data!.docs[index];
        return ListTile(
          title: Text(application['applicantName'] ?? "Unknown"),
          subtitle: Text("Job: ${application['jobTitle'] ?? 'Not specified'}"),
        );
      },
    );
  },
)

    );
  }
}
