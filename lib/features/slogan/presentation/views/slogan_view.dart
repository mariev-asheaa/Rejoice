import 'package:efraho/core/utils/back_icon.dart';
import 'package:efraho/features/slogan/presentation/widgets/slogan_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class SloganView extends StatelessWidget {
  const SloganView({super.key});
  static const routeName = 'slogan';

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
      body: const SafeArea(
        child: SloganBody(),
      ),
    );
  }
}
