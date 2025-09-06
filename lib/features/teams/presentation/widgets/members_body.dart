import 'package:efraho/features/teams/models/member_model.dart';
import 'package:efraho/features/teams/presentation/widgets/memeber.dart';
import 'package:flutter/material.dart';

class MembersBody extends StatelessWidget {
  const MembersBody({super.key, required this.members});
  final List<MemberModel> members;
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      child: ListView.separated(itemBuilder: (context,index){
        return Member(memberModel: members[index]);
      }, separatorBuilder:(context,index)=>SizedBox(),
          itemCount: members.length
      ),
    );
  }
}
