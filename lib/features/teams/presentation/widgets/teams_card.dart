import 'package:efraho/features/teams/models/team_model.dart';
import 'package:efraho/features/teams/presentation/views/members_view.dart';
import 'package:flutter/material.dart';

class TeamsCard extends StatelessWidget {
  const TeamsCard({super.key, required this.teamModel,});
final TeamModel teamModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .28,
            width: MediaQuery.sizeOf(context).width * .5,
            child: Card(
              margin: EdgeInsets.all(10),
              color:teamModel.color,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(teamModel.text,textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
                ),
              ),
            ),
          ),

        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('Score:${teamModel.score}',style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
          ),
        )
      ],
    );
  }
}
