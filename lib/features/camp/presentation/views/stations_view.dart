import 'package:efraho/core/utils/gradient_body.dart';
import 'package:efraho/features/camp/presentation/widgets/stations_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/back_icon.dart';
import '../../../../core/utils/constants.dart';

class StationsView extends StatelessWidget {
  const StationsView({super.key});
  static const routeName='stations';
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
      body: GradientBody(child: SafeArea(child: StationsBody())),
    );
  }
}
