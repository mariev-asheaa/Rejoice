import 'package:efraho/features/teams/models/member_model.dart';
import 'package:efraho/features/teams/models/team_model.dart';
import 'package:efraho/features/teams/presentation/views/members_view.dart';
import 'package:efraho/features/teams/presentation/widgets/teams_card.dart';
import 'package:flutter/material.dart';

class TeamsBody extends StatelessWidget {
  const TeamsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TeamModel> teams = [
      TeamModel(
        color: Colors.red,
        text: 'الفريق الاحمر',
        score: '60',
        members: [
          MemberModel(name: 'ماريف اشعياء', score: '12'),
          MemberModel(name: 'مينا مجدى', score: '9'),
        ],
      ),
      TeamModel(
        color: Colors.blue,
        text: 'الفريق الازرق',
        score: '90',
        members: [
          MemberModel(name: 'سارة يوسف', score: '14'),
          MemberModel(name: 'مينا مجدي', score: '10'),
        ],
      ),
      TeamModel(
        color: Colors.yellow,
        text: 'الفريق الاصفر',
        score: '50',
        members: [
          MemberModel(name: 'سارة يوسف', score: '14'),
          MemberModel(name: 'مينا مجدي', score: '10'),
        ],
      ),
      TeamModel(
        color: Colors.purple,
        text: 'الفريق البنفسجى',
        score: '100',
        members: [
          MemberModel(name: 'سارة يوسف', score: '14'),
          MemberModel(name: 'مينا مجدي', score: '10'),
        ],
      ),
      TeamModel(
        color: Colors.orange,
        text: 'الفريق الاورانج',
        score: '123',
        members: [
          MemberModel(name: 'سارة يوسف', score: '14'),
          MemberModel(name: 'مينا مجدي', score: '10'),
        ],
      ),
      TeamModel(
        color: Colors.green,
        text: 'الفريق الاخضر',
        score: '235',
        members: [
          MemberModel(name: 'سارة يوسف', score: '14'),
          MemberModel(name: 'مينا مجدي', score: '10'),
        ],
      ),
    ];

    return GridView.builder(
        itemCount: teams.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .7,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: (){
                Navigator.pushNamed(context, MembersView.routeName, arguments: teams[index].members,);
              },
              child: TeamsCard(teamModel: teams[index]));
        }
    );
  }
}
