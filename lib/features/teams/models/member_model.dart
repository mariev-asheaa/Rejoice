class MemberModel {
  final String id;
  final String teamId;
  final String name;
  final int score;

  MemberModel({
    required this.id,
    required this.teamId,
    required this.name,
    required this.score,
  });


  factory MemberModel.fromFireStore(Map<String, dynamic> data, String id, String teamId) {
    return MemberModel(
      id: id,
      teamId: teamId,
      name: data['name'] ?? '',
      score: data['score'] ?? 0,
    );
  }


  Map<String, dynamic> toFireStore() {
    return {
      "name": name,
      "score": score,
    };
  }

  MemberModel copyWith({
    String? name,
    int? score,
  }) {
    return MemberModel(
      id: id,
      teamId: teamId,
      name: name ?? this.name,
      score: score ?? this.score,
    );
  }
}
