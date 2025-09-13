import 'package:flutter/cupertino.dart';

import '../../../../core/utils/text_views_body.dart';

class StationsBody extends StatelessWidget {
  const StationsBody({super.key});

  @override
  Widget build(BuildContext context) {
    const String arabicText = ''' �🔥 جاهزين للمفاجآت؟ 🔥🎉
لو فاكر إنك جربت كل الألعاب قبل كده… فإحنا جايين نقولك لأ 👀!
في محطتنا هتلاقي كل جديد 
كل محطة مختلفة، وكل لعبة ليها طابعها، واللي جاي أكتر من مجرد لعب… جاي متعة، تحدي، وضحك من القلب 🙌
📍 ماتسيبش نفسك تفوت stations efr7o  

''';
    return TextBody(arabicText: arabicText);
  }
}
