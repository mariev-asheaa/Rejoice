import 'package:flutter/material.dart';

import '../../../../core/utils/text_views_body.dart';

class WorkshopBody extends StatelessWidget {
  const WorkshopBody({super.key});

  @override
  Widget build(BuildContext context) {
    const String arabicText = '''
مستنيينكم في فقرة الـ Workshop 🎉
فقرة مختلفة هنعيش فيها تجربة عملية مع بعض، نشارك، نتعلم، ونكتشف جوانب جديدة تخلي المؤتمر مش مجرد حضور… لكن مشاركة حقيقية 👏

📌 خليكم مستعدين… لأن workshop  دي فيها حاجات هتفرق معاكم وتفضل فاكرينها ✨ ''';
    return TextBody(arabicText: arabicText);
  }
}
