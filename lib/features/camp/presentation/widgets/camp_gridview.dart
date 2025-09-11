import 'package:efraho/features/camp/presentation/views/competition_view.dart';
import 'package:efraho/features/camp/presentation/views/night_prayers_view.dart';
import 'package:efraho/features/camp/presentation/views/savers_view.dart';
import 'package:efraho/features/camp/presentation/views/stations_view.dart';
import 'package:efraho/features/camp/presentation/views/vibes_view.dart';
import 'package:flutter/cupertino.dart';

import '../../../../generated/assets.dart';
import 'camp_category.dart';

class CampGridview extends StatelessWidget {
  const CampGridview({super.key});

  @override
  Widget build(BuildContext context) {
    List<CampCategory>campCategories=[
      CampCategory(text: 'درس كتاب', image: Assets.imagesBook, onTap: (){}),
      CampCategory(text: 'إعلامية', image: Assets.imagesGoodvibes, onTap: (){
       Navigator.pushNamed(context, VibesView.routeName);
      }),
      CampCategory(text: 'حفله سمر', image: Assets.imagesTheaterMask, onTap: (){}),
      CampCategory(text: 'ميديا و راديو', image: Assets.imagesVoiceRecord, onTap: (){}),
      CampCategory(text: 'محفوظات', image: Assets.imagesPrayers, onTap: (){
        Navigator.pushNamed(context, SaversView.routeName);
      }),
      CampCategory(text: 'مسابقات', image: Assets.imagesCompetitive, onTap: (){
        Navigator.pushNamed(context, CompetitionView.routeName);
      }),
      CampCategory(text: 'Stations', image: Assets.imagesStation, onTap: (){
        Navigator.pushNamed(context, StationsView.routeName);
      }),
      CampCategory(text: 'قداس و تسبحة', image: Assets.imagesCross, onTap: (){}),
      CampCategory(text: 'أمسية طقسية', image: Assets.imagesPraying, onTap: (){
        Navigator.pushNamed(context, NightPrayersView.routeName);
      }),
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
