import 'package:efraho/core/services/shared_prefrences_singelton.dart';
import 'package:efraho/features/teams/models/member_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/teams_cubit.dart';

class Member extends StatelessWidget {
  const Member({super.key, required this.memberModel, required this.teamId});

  final MemberModel memberModel;
  final String teamId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            memberModel.name,
            style: const TextStyle(fontSize: 22),
          ),
          Row(
            children: [
              Text(
                "${memberModel.score}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (Prefs.isOwner)
                IconButton(
                  icon: const Icon(Icons.add_circle, size: 30),
                  onPressed: () {
                    _showAddPointsDialog(context, memberModel);
                  },
                ),
            ],
          ),
        ],
      ),
    );
  }

  void _showAddPointsDialog(BuildContext context, MemberModel member) {
    final TextEditingController controller = TextEditingController();

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Add points to ${member.name}"),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: "Enter points"),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              final int? addedPoints = int.tryParse(controller.text);
              if (addedPoints != null && addedPoints > 0) {
                final cubit = context.read<TeamsCubit>();
                cubit.updateMemberScore(
                  '2025',
                  teamId,
                  member.id,
                    addedPoints
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
