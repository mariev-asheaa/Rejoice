import 'package:cloud_firestore/cloud_firestore.dart';


class FireStoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addConferenceData() async {
    final conferenceRef = _db.collection("conferences").doc("2025");

    final teams = [
      {
        "name": "الفريق الأحمر",
        "color": "red",
        "score": 0,
        "members": [
          {"name": "ماريف اشعياء", "score": 0},
          {"name": "مينا مجدي", "score": 0},
        ],
      },
      {
        "name": "الفريق الأزرق",
        "color": "blue",
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
        "color": team["color"],
        "score": team["score"],
      });

      for (var member in team["members"] as List) {
        await teamRef.collection("members").add(member);
      }
    }
  }


  Future<void> updateTeamScore(String conferenceId, String teamId, int newScore) async {
    await _db
        .collection("conferences")
        .doc(conferenceId)
        .collection("teams")
        .doc(teamId)
        .update({"score": newScore});
  }


  Future<void> updateMemberScore(String conferenceId, String teamId, String memberId, int newScore) async {
    await _db
        .collection("conferences")
        .doc(conferenceId)
        .collection("teams")
        .doc(teamId)
        .collection("members")
        .doc(memberId)
        .update({"score": newScore});
  }


}
