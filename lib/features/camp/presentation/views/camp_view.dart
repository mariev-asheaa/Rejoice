import 'package:efraho/features/camp/presentation/widgets/camp_body.dart';
import 'package:flutter/material.dart';

class CampView extends StatelessWidget {
  const CampView({super.key});
static const routeName='camp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CampBody()),
    );
  }
}
