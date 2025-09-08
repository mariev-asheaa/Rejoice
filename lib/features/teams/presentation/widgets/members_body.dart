import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/teams_cubit.dart';
import 'memeber.dart';

class MembersBody extends StatefulWidget {
  const MembersBody({super.key, required this.teamId});

  final String teamId;

  @override
  State<MembersBody> createState() => _MembersBodyState();
}

class _MembersBodyState extends State<MembersBody> {
  @override
  void initState() {
    context.read<TeamsCubit>().fetchTeams('2025');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamsCubit, TeamsState>(
      builder: (context, state) {
        if (state is TeamsLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is TeamsError) {
          return Center(child: Text(state.message));
        }

        if (state is TeamsSuccess) {
          final team = state.teams.firstWhere((t) => t.id == widget.teamId);

          return ListView.separated(
            itemCount:  team.members.length,
            itemBuilder: (context, index) {
              return Member(
                memberModel: team.members[index],
                teamId: team.id,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 8),
          );
        }
        return const SizedBox();
      },
    );
  }
}
