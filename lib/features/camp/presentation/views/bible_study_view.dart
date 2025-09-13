import 'package:efraho/core/utils/gradient_body.dart';
import 'package:efraho/features/camp/presentation/widgets/bible_study_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/Constants.dart';

class BibleStudyView extends StatelessWidget {
  const BibleStudyView({super.key});
static const routeName='bibleStudy';
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
      body: GradientBody(child: SafeArea(child: BibleStudyBody())),
    );
  }
}
