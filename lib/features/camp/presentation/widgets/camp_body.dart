import 'package:efraho/core/utils/back_icon.dart';
import 'package:efraho/features/camp/presentation/widgets/camp_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../../../generated/assets.dart';

class CampBody extends StatelessWidget {
  const CampBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(Assets.imagesEfrahoLogo),
          BackIcon(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper:  WaveClipperTwo(reverse: true),
              child: Container(
                color: Colors.white,
                height: MediaQuery.sizeOf(context).height*.6,
                width: double.infinity,
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.sizeOf(context).height*.3,
              left: 0,
              right: 0,
              bottom: 0,
              child: CampGridview()
          ),
        ],
      ),
    );
  }
}
