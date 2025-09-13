import 'package:efraho/core/utils/gradient_body.dart';
import 'package:efraho/features/camp/presentation/widgets/praise_and_mass_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/Constants.dart';
import '../../../../core/utils/back_icon.dart';

class PraiseAndMassView extends StatelessWidget {
  const PraiseAndMassView({super.key});
static const routeName='Praise_Mass';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(color: Colors.white,),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              color: gradientAppBarColor
          ),
        ),
      ),
      body: GradientBody(child: SafeArea(child:PraiseAndMassBody())),
    );
  }
}
