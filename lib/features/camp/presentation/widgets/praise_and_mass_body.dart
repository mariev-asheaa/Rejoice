import 'package:efraho/core/utils/gradient_body_background.dart';
import 'package:flutter/material.dart';

class PraiseAndMassBody extends StatelessWidget {
  const PraiseAndMassBody({super.key});

  @override
  Widget build(BuildContext context) {
    const String arabicText = '''
🌙✨ في مؤتمر افرحوا ٢٠٢٥ هنعيش ليلة مختلفة كلها حضور سماوي…

📌 نبتدي بـ صلاة التسبحة بالليل 🎶 نسبّح مع الملايكة ونملأ المكان فرح روحي.
وبعدها مباشرة ندخل على أقدس لحظة في المؤتمر: القداس الإلهي Open Air ✝️ وسط الطبيعة وتحت السما المفتوحة في بيت القديسين 🌌… لقاء حقيقي مع المسيح، يملانا نعمة وقوة جديدة.

⏳ ماتفوّتش الليلة دي، لأنها هتفضل مطبوعة في قلبك طول العمر 💙
     ''';
    return GradientBodyBackground(arabicText: arabicText);
  }
}
