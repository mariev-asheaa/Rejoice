import 'package:efraho/core/utils/back_icon.dart';
import 'package:efraho/features/teams/models/member_model.dart';
import 'package:efraho/features/teams/presentation/cubits/teams_cubit.dart';
import 'package:efraho/features/teams/presentation/widgets/members_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MembersView extends StatelessWidget {
  const MembersView({super.key, required this.teamId,required this.members});

  static const routeName = 'members';

  final String teamId;
  final List<MemberModel> members;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeamsCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: BackIcon(),
        ),
        body: SafeArea(
          child: MembersBody(
            teamId: teamId,
          ),
        ),
      ),
    );
  }
}
