import 'package:efraho/features/camp/presentation/widgets/stations_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/back_icon.dart';

class StationsView extends StatelessWidget {
  const StationsView({super.key});
  static const routeName='stations';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
      ),
      body: SafeArea(child: StationsBody()),
    );
  }
}
