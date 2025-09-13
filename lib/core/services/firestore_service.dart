import 'package:cloud_firestore/cloud_firestore.dart';


class FireStoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addConferenceData() async {
    final conferenceRef = _db.collection("conferences").doc("2025");
    final teams = [
      {
        "name": "الفريق الأحمر",
        "score": 0,
        "color": "red",
        "members": [],
      },
      {
        "name": "الفريق الموف",
        "score": 0,
        "color": "purple",
        "members": [],
      },
      {
        "name": "الفريق الاصفر",
        "score": 0,
        "color": "yellow",
        "members": [],
      },
      {
        "name": "الفريق الاورانج",
        "score": 0,
        "color": "orange",
        "members": [],
      },
      {
        "name": "الفريق الابيض",
        "score": 0,
        "color": "white",
        "members": [],
      },
      {
        "name": "الفريق الفوشيا",
        "score": 0,
        "color": "pink",
        "members": [],
      },
    ];

    for (var team in teams) {
      final teamRef = conferenceRef.collection("teams").doc();

      await teamRef.set({
        "name": team["name"],
        "score": team["score"],
        "color": team["color"],
      });

      for (var member in team["members"] as List) {
        await teamRef.collection("members").add(member);
      }
    }
  }

}
