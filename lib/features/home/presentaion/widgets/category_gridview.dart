import 'package:efraho/features/camp/presentation/views/camp_view.dart';
import 'package:efraho/features/carols/presentation/views/carol_view.dart';
import 'package:efraho/features/contact/presentation/views/contact_view.dart';
import 'package:efraho/features/home/presentaion/widgets/category_item.dart';
import 'package:efraho/features/program/presentation/views/program_view.dart';
import 'package:efraho/features/slogan/presentation/views/slogan_view.dart';
import 'package:efraho/features/teams/presentation/views/teams_view.dart';
import 'package:flutter/cupertino.dart';

import '../../../../generated/assets.dart';

class CategoryGridview extends StatelessWidget {
  const CategoryGridview({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryItem>categories=[
      CategoryItem(text: 'البرنامج', image: Assets.imagesMultitasking, onTap: () {
        Navigator.pushNamed(context,ProgramView.routeName);
      },),
      CategoryItem(text: 'الشعار', image: Assets.imagesMusicNotes, onTap: () {
        Navigator.pushNamed(context,SloganView.routeName);
      },),
      CategoryItem(text: 'المؤتمر', image: Assets.imagesTimetable, onTap: () {
      Navigator.pushNamed(context,CampView.routeName);
      },),
      CategoryItem(text: 'الترانيم', image: Assets.imagesMusic, onTap: () {
        Navigator.pushNamed(context,CarolView.routeName);
      },),
      CategoryItem(text: 'التواصل', image: Assets.imagesContact, onTap: () {
        Navigator.pushNamed(context, ContactView.routName);
      },),
      CategoryItem(text: 'الفرق', image: Assets.imagesTeams, onTap: () {
        Navigator.pushNamed(context, TeamsView.routeName);
      },)
    ];
    return GridView.builder(
      itemCount: categories.length,
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      childAspectRatio: .8,
        ),
        itemBuilder: (BuildContext context, int index) {
    return categories[index];
      }
      );
  }
}
