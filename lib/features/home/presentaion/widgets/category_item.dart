import 'package:flutter/material.dart';


class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.text, required this.image, required this.onTap});
final String text,image;
final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 2,
              ),
              borderRadius: BorderRadius.circular(60),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(image),
            ),
          ),
          Text(text,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}
