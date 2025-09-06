import 'package:efraho/core/utils/back_icon.dart';
import 'package:efraho/features/camp/presentation/widgets/vibes_body.dart';
import 'package:flutter/material.dart';

class VibesView extends StatelessWidget {
  const VibesView({super.key});
static const routeName='vibes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
      ),
      body: SafeArea(child: VibesBody()),
    );
  }
}
