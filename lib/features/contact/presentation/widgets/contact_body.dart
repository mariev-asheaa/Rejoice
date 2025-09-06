import 'package:efraho/core/utils/constants.dart';
import 'package:efraho/core/helper-function/url_launcher.dart';
import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';

class ContactBody extends StatelessWidget {
  const ContactBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
            openFacebook();
            },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff1976D2)
                    ),
                    child: Text('جروب اجتماع الجامعيين \nو الخريجين',
                      style:TextStyle(
                          color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Image.asset(Assets.iconsFacebook,height: 60,),
                ],
              )
          ),
           SizedBox(height: 20,),
           GestureDetector(
               onTap: (){
              openWhatsApp();
               },
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Container(
                     width: 180,
                     padding: EdgeInsets.all(8),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Color(0xff0FD839)
                     ),
                     child: Text(' whatsapp chanel\n اجتماع الجامعيين و الخريجين',
                       style:TextStyle(
                           color: Colors.white,
                       ) ,),
                   ),
                   SizedBox(width: 20,),
                   Image.asset(Assets.iconsWhatsapp,height: 65,),
                 ],
               )
           ),
        ],
      ),
    );
  }
}
