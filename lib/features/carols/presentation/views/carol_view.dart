import 'package:efraho/features/carols/presentation/widgets/carols_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/Constants.dart';
import '../../../../core/utils/back_icon.dart';

class CarolView extends StatelessWidget {
  const CarolView({super.key});
static const routeName='carols';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIcon(color: Colors.white),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              color: gradientAppBarColor
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff0d324d), Color(0xff7f5a83)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const SafeArea(
          child: CarolsBody(),
        ),
      ),
    );
  }
}
