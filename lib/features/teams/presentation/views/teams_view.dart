import 'package:efraho/core/back_icon.dart';
import 'package:efraho/features/teams/presentation/widgets/teams_body.dart';
import 'package:flutter/material.dart';

class TeamsView extends StatelessWidget {
  const TeamsView({super.key});
  static const routeName='teams';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
      ),
      body: SafeArea(child: TeamsBody()),
    );
  }
}
