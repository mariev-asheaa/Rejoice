import 'package:efraho/core/utils/gradient_body.dart';
import 'package:efraho/features/camp/presentation/widgets/workshop_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/Constants.dart';
import '../../../../core/utils/back_icon.dart';

class WorkshopView extends StatelessWidget {
  const WorkshopView({super.key});
  static const routeName='workshop';
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
      body: GradientBody(child: SafeArea(child:WorkshopBody())),
    );
  }
}
