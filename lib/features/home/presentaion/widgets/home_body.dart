import 'package:efraho/features/home/presentaion/widgets/category_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../../../generated/assets.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(Assets.imagesEfrahoLogo),
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
              top:  MediaQuery.sizeOf(context).height*.4,
              left: 0,
              right: 0,
              bottom: 0,
              child: CategoryGridview()
          ),
        ],
      ),
    );
  }
}
