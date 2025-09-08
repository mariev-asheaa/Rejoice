import 'package:efraho/core/utils/back_icon.dart';
import 'package:efraho/features/camp/presentation/cubits/competition_cubit.dart';
import 'package:efraho/features/camp/presentation/widgets/competition_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompetitionView extends StatelessWidget {
  const CompetitionView({super.key});

  static const routeName = 'competition';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CompetitionCubit(),
      child: Scaffold(
        appBar: AppBar(leading: BackIcon(),),
        body: SafeArea(child: CompetitionBody()),
      ),
    );
  }
}
