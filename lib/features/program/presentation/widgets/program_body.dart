import 'package:efraho/features/program/presentation/widgets/time_segment_control.dart';
import 'package:flutter/material.dart';

class ProgramBody extends StatelessWidget {
  const ProgramBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TimeSegmentedControl(),
      ),
    );
  }
}
