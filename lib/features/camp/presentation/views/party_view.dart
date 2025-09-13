import 'package:efraho/features/camp/presentation/widgets/party_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/Constants.dart';
import '../../../../core/utils/back_icon.dart';

class PartyView extends StatelessWidget {
  const PartyView({super.key});
  static const routeName='party';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(color: Colors.white,),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              color: gradientAppBarColor
          ),
        ),
      ),
      body: SafeArea(child:PartyBody() ),
    );
  }
}
