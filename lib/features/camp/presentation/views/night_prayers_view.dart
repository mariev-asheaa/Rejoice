import 'package:efraho/core/utils/gradient_body.dart';
import 'package:efraho/features/camp/presentation/widgets/night_prayers_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class NightPrayersView extends StatelessWidget {
  const NightPrayersView({super.key});
static const routeName='nightPrayers';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(color: Colors.white,),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              color: gradientAppBarColor
          ),
        ),
      ),
      body: GradientBody(child: SafeArea(child: NightPrayersBody())),
    );
  }
}
