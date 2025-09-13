import 'package:flutter/material.dart';

class GradientBody extends StatelessWidget {
  const GradientBody({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff0d324d), Color(0xff7f5a83)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child:child
    );
  }
}
