import 'package:efraho/core/utils/text_views_body.dart';
import 'package:flutter/material.dart';

class MediaAndRadioBody extends StatelessWidget {
  const MediaAndRadioBody({super.key});

  @override
  Widget build(BuildContext context) {
    const String arabicText = '''
📻🎥 في افرحوا ٢٠٢٥ مستنيينكم في الفقرة للى بتحبوها للى دائما بتشاركم فيها
: ميديا & راديو ✨
فقرة كلها إبداع… هنسمع، نتفرج، ونشارك أفكار مختلفة هتخليكم تعيشوا المؤتمر بروح جديدة 👏🔥

📌 خليكوا جاهزين للفقرة دي… لأنها هتكون لمستكم الخاصة اللي هتسيب أثر في المؤتمر 🎶🎬

 ''';
    return TextBody(arabicText: arabicText);
  }
}
