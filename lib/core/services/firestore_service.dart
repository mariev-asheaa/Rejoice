import 'package:cloud_firestore/cloud_firestore.dart';


class FireStoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addConferenceData() async {
    final conferenceRef = _db.collection("conferences").doc("2025");

    final teams = [
      {
        "name": "الفريق الأحمر",
        "score": 0,
        "members": [
          {"name": "ماريف اشعياء", "score": 0},
          {"name": "مينا مجدي", "score": 0},
        ],
      },
      {
        "name": "الفريق الأزرق",
        "score": 0,
        "members": [
          {"name": "سارة يوسف", "score": 0},
          {"name": "أندرو", "score": 0},
        ],
      },
    ];

    for (var team in teams) {
      final teamRef = conferenceRef.collection("teams").doc();

      await teamRef.set({
        "name": team["name"],
        "score": team["score"],
      });

      for (var member in team["members"] as List) {
        await teamRef.collection("members").add(member);
      }
    }
  }

}
