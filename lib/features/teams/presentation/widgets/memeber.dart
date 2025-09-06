import 'package:efraho/features/teams/models/member_model.dart';
import 'package:flutter/material.dart';

class Member extends StatelessWidget {
  const Member({super.key,required this.memberModel, });
final MemberModel memberModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(memberModel.name,style: TextStyle(
            fontSize: 25
          ),),
          Text(memberModel.score,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}
