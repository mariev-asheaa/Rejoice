class MemberModel {
  final String name;
  final String score;

  MemberModel({required this.name, required this.score});

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "score": score,
    };
  }
}
