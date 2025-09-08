import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      Navigator.pop(context);
    }, icon: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Icon(Icons.arrow_back_ios,size: 25,),
    )
    );
  }
}
