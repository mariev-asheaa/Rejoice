import 'package:efraho/core/utils/back_icon.dart';
import 'package:efraho/core/utils/gradient_body.dart';
import 'package:efraho/features/camp/presentation/cubits/competition_cubit.dart';
import 'package:efraho/features/camp/presentation/widgets/competition_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/Constants.dart';

class CompetitionView extends StatelessWidget {
  const CompetitionView({super.key});

  static const routeName = 'competition';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CompetitionCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: const BackIcon(color: Colors.white),
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                color: gradientAppBarColor
            ),
          ),
        ),
        body: GradientBody(
          child: const SafeArea(
            child: CompetitionBody(),
          ),
        ),   ),
    );
  }
}
