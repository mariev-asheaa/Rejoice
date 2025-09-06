import 'dart:ui';

import 'package:efraho/features/teams/models/member_model.dart';


class TeamModel{
  final Color color;
  final String text;
  final List<MemberModel> members;
  final String score;

  TeamModel({required this.color, required this.text, required this.members, required this.score});

  Map<String, dynamic> toMap() {
    return {
      "name": text,
      "score": score,
    };
  }
}