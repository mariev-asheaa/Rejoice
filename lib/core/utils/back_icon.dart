import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({super.key, this.color=Colors.black});
final Color color;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      Navigator.pop(context);
    }, icon: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Icon(Icons.arrow_back_ios,size: 25,color: color,),
    )
    );
  }
}
