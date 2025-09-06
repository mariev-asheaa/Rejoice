import 'package:efraho/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CampCategory extends StatelessWidget {
  const CampCategory({super.key, required this.text, required this.image, required this.onTap});
  final String text,image;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: kPrimaryColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset(image),
              ),
            ),
            Flexible(
              child:
              Text(text,
                  textAlign: TextAlign.center
                  ,style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),),
            )
          ],
        ),
      ),
    );
  }
}
