import 'package:efraho/core/utils/text_views_body.dart';
import 'package:flutter/material.dart';

class SloganBody extends StatelessWidget {
  const SloganBody({super.key});

  @override
  Widget build(BuildContext context) {
    const String arabicText = '''
مش عايز اكون جندي مزيف 
شكلي في الجيش لكن مهزوم 
من بر ابان جامد وبخوف 
لكني ضعيف مش قادر اقوم 

🔹 القرار
عايز ابقالك جندي حقيقي
انت القائد كل طريقي 

طول ما بطيعك بتقويني 
وفي حربي انا هغلب بيك 2

هشيل سلاح الله الكامل 
واغلب في حربي ضد ابليس 
لما الخطيه تفضل تحاول 
وراك هكمل للخلف مفيش 

🔹 القرار
عايز ابقالك جندي حقيقي
انت القائد كل طريقي 

طول ما بطيعك بتقويني 
وفي حربي انا هغلب بيك 2

ولما يجي العالم يخدع 
ويحول عيني عنك يا يسوع
هتمسك بيك اصل انت اروع 
ساعدني اعيش دايما في خضوع 

🔹 القرار
عايز ابقالك جندي حقيقي
انت القائد كل طريقي 

طول ما بطيعك بتقويني 
وفي حربي انا هغلب بيك 2
''';

    return TextBody(arabicText: arabicText);
  }
}
