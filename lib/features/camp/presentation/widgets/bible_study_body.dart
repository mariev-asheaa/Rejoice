import 'package:efraho/core/utils/gradient_body_background.dart';
import 'package:flutter/material.dart';

class BibleStudyBody extends StatelessWidget {
  const BibleStudyBody({super.key});

  @override
  Widget build(BuildContext context) {
    const String arabicText=''' 
🔍 3 مفاتيح… 3 أبواب… 3 لقاءات في درس الكتاب بمؤتمر افرحوا ٢٠٢٥ ✨

👑 مفتاح هيقودك لقصة ملك… مش بالسيف انتصر، لكن بالصلاة والإيمان قدر يواجه المستحيل.

🛡️ مفتاح تاني هيفتحلك على معركة… مش أرضية، لكن روحية، فيها السلاح مش معدن… لكن قوة من فوق.

🎶 والمفتاح الأخير… لحن سماوي، كلمات طالعة من القلب للسماء، هتعرفك سرّ السلام والفرح الحقيقي.

مين مستعد يكتشف الأسرار؟ 🔥
درس الكتاب في افرحوا ٢٠٢٥… مستنيينكم 🙌
    ''';
    return const GradientBodyBackground(arabicText: arabicText);
  }
}
