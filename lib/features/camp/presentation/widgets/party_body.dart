import 'package:flutter/material.dart';

import '../../../../core/utils/gradient_body_background.dart';

class PartyBody extends StatelessWidget {
  const PartyBody({super.key});

  @override
  Widget build(BuildContext context) {
    const String arabicText = ''' 
🌍✨ في آخر ليلة من افرحوا ٢٠٢٥… مستنيينكم في حفلة السفر 🎉
رحلة سوا هتمر بين عصور مختلفة 🕰️، كل محطة فيها سرّ وكنز مشترك بيجمعنا.
والمفاجأة؟ إن الرحلة دي هي الخاتمة اللي بتلمّ ٣ أيام الفرح والروحانية في لحظة واحدة ❤️

⏳ خليك حاضر… عشان تختِم المؤتمر بالكنز اللي مش هتلاقيه غير معانا ✨''';
    return GradientBodyBackground(arabicText: arabicText);
  }
}
