import 'package:flutter/cupertino.dart';

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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Text(
            arabicText,
            style: const TextStyle(
              fontSize: 20,
              height: 1.6,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ),

    );
  }
}
