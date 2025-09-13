import 'package:efraho/features/teams/models/team_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/shared_prefrences_singelton.dart';
import '../cubits/teams_cubit.dart';

class TeamsCard extends StatelessWidget {
  const TeamsCard({super.key, required this.teamModel});
  final TeamModel teamModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .28,
          width: MediaQuery.sizeOf(context).width * .5,
          child: Stack(
            children: [
              Card(
                margin: const EdgeInsets.all(10),
                color: teamModel.color,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    teamModel.text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),

              if (Prefs.isOwner)
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
                    icon: const Icon(Icons.add_circle,
                        color: Colors.white, size: 30),
                    onPressed: () {
                      _showAddPointsDialog(context, teamModel);
                    },
                  ),
                ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Score: ${teamModel.score}',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showAddPointsDialog(BuildContext context, TeamModel team) {
    final TextEditingController controller = TextEditingController();

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Add points to ${team.text}"),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: "Enter points",
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              final int? points = int.tryParse(controller.text);
              if (points != null) {
                final newScore = team.score + points;
                context.read<TeamsCubit>().updateTeamScore(
                  '2025',
                  team.id,
                  newScore,
                );
              }
              Navigator.pop(context);
            },
            child: const Text("Add"),
          ),
        ],
      ),
    );
  }

}
