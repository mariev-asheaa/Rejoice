import 'package:efraho/core/utils/back_icon.dart';
import 'package:efraho/features/program/presentation/widgets/program_body.dart';
import 'package:flutter/material.dart';

class ProgramView extends StatelessWidget {
  const ProgramView({super.key});
static const routeName='program';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
      ),
      body: SafeArea(child: ProgramBody()),
    );
  }
}
