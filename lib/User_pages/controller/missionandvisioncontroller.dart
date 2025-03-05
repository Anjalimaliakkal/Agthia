import 'package:cloud_firestore/cloud_firestore.dart';

class MissionAndVisionController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<DocumentSnapshot<Map<String, dynamic>>> getMissionAndVisionStream() {
    return _firestore
        .collection('mission_and_vision')
        .doc('content')
        .snapshots();
  }

  Future<void> updateVision(String visionContent) async {
    if (visionContent.trim().isEmpty) {
      throw Exception("Vision content cannot be empty");
    }

    try {
      await _firestore.collection('mission_and_vision').doc('content').set({
        'vision_content': visionContent.trim(),
        'updated_at': Timestamp.now(),
      }, SetOptions(merge: true));
    } catch (e) {
      throw Exception("Failed to update vision: $e");
    }
  }
}