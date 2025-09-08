import 'package:flutter/material.dart';

import 'member_model.dart';

class TeamModel {
  final String id;
  final String text;
  final int score;
  final Color color;
  final List<MemberModel> members;

  TeamModel({
    required this.id,
    required this.text,
    required this.score,
    required this.color,
    required this.members,
  });

  factory TeamModel.fromFireStore(
      String id,
      Map<String, dynamic> data,
      List<MemberModel> members,
      ) {
    return TeamModel(
      id: id,
      text: data["name"] ?? "",
      score: data["score"] ?? 0,
      color: _mapColor(data["color"] ?? "grey"),
      members: members,
    );
  }

  static Color _mapColor(String colorName) {
    switch (colorName) {
      case "red":
        return Colors.red;
      case "blue":
        return Colors.blue;
      case "yellow":
        return Colors.yellow;
      case "purple":
        return Colors.purple;
      case "orange":
        return Colors.orange;
      case "green":
        return Colors.green;
      default:
        return Colors.grey;
    }
  }
}
