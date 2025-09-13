import 'package:efraho/core/utils/gradient_body.dart';
import 'package:efraho/features/camp/presentation/widgets/media_and_radio_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/Constants.dart';
import '../../../../core/utils/back_icon.dart';

class MediaAndRadioView extends StatelessWidget {
  const MediaAndRadioView({super.key});
static const routeName='mediaAndRadio';
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
      body: GradientBody(child: const SafeArea(child: MediaAndRadioBody())),
    );
  }
}
