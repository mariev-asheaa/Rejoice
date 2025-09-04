import 'package:flutter/cupertino.dart';

import '../../../../generated/assets.dart';
import 'camp_category.dart';

class CampGridview extends StatelessWidget {
  const CampGridview({super.key});

  @override
  Widget build(BuildContext context) {
    List<CampCategory>campCategories=[
      CampCategory(text: 'درس كتاب', image: Assets.imagesBook, onTap: (){}),
      CampCategory(text: 'إعلامية', image: Assets.imagesMicrophone, onTap: (){}),
      CampCategory(text: 'حفله سمر', image: Assets.imagesTheaterMask, onTap: (){}),
      CampCategory(text: 'المزامير', image: Assets.imagesMusicNote, onTap: (){}),
      CampCategory(text: 'ميديا و راديو', image: Assets.imagesVoiceRecord, onTap: (){}),
      CampCategory(text: 'محفوظات و مسابقات', image: Assets.imagesCompetitive, onTap: (){}),
      CampCategory(text: 'Stations', image: Assets.imagesTrain, onTap: (){}),
      CampCategory(text: 'قداس و تسبحة', image: Assets.imagesCross, onTap: (){}),
      CampCategory(text: 'أمسية طقسية', image: Assets.imagesPraying, onTap: (){}),
      CampCategory(text: 'Workshop', image: Assets.imagesWorkshop, onTap: (){}),
    ];
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: campCategories.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: .9,
        ),
        itemBuilder: (BuildContext context, int index) {
          return campCategories[index];
        }
    );
  }
}
