import 'package:efraho/core/utils/back_icon.dart';
import 'package:efraho/core/utils/constants.dart';
import 'package:efraho/features/camp/presentation/widgets/savers_body.dart';
import 'package:flutter/material.dart';

class SaversView extends StatelessWidget {
  const SaversView({super.key});
  static const routeName = 'savers';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIcon(color: Colors.white),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: gradientAppBarColor
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff0d324d), Color(0xff7f5a83)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const SafeArea(
          child: SaversBody(),
        ),
      ),
    );
  }
}
