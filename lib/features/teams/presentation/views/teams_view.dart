import 'package:efraho/core/utils/back_icon.dart';
import 'package:efraho/features/teams/presentation/cubits/teams_cubit.dart';
import 'package:efraho/features/teams/presentation/widgets/teams_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamsView extends StatelessWidget {
  const TeamsView({super.key});

  static const routeName = 'teams';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeamsCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: BackIcon(),
        ),
        body: SafeArea(child: TeamsBody()),
      ),
    );
  }
}
