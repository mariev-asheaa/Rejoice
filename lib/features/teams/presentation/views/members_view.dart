import 'package:efraho/core/back_icon.dart';
import 'package:efraho/features/teams/models/member_model.dart';
import 'package:efraho/features/teams/presentation/widgets/members_body.dart';
import 'package:flutter/material.dart';


class MembersView extends StatelessWidget {
  const MembersView({super.key});
static const routeName='members';
  @override
  Widget build(BuildContext context) {
    final List<MemberModel> members =
    ModalRoute.of(context)!.settings.arguments as List<MemberModel>;

    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
      ),
      body: SafeArea(
          child: MembersBody(members: members)
      ),
    );
  }
}
