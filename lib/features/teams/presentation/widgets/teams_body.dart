import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:efraho/features/teams/presentation/views/members_view.dart';
import 'package:efraho/features/teams/presentation/widgets/teams_card.dart';

import '../cubits/teams_cubit.dart';

class TeamsBody extends StatefulWidget {
  const TeamsBody({super.key});

  @override
  State<TeamsBody> createState() => _TeamsBodyState();
}

class _TeamsBodyState extends State<TeamsBody> {
  @override
  void initState() {
    context.read<TeamsCubit>().fetchTeams("2025");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22),
      child: BlocBuilder<TeamsCubit, TeamsState>(
        builder: (context, state) {
          if (state is TeamsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TeamsSuccess) {
            return GridView.builder(
              itemCount: state.teams.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .7,
              ),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => MembersView(
                          teamId: state.teams[index].id,
                          members: state.teams[index].members,
                        ),
                      ),
                    );

                  },
                  child: TeamsCard(teamModel: state.teams[index]),
                );
              },
            );
          } else if (state is TeamsError) {
            return Center(child: Text("Error: ${state.message}"));
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
