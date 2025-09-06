import 'package:flutter/material.dart';

class VibesBody extends StatelessWidget {
  const VibesBody({super.key});

  @override
  Widget build(BuildContext context) {
    const String arabicText = '''
إحنا فريق إعلاميه، شغلتنا نقدم لمسة مختلفة كل سنه في مؤتمر افرحوا، ونخلق جو مميز يفضل مطبوع في الذاكرة.

- يافطة المؤتمر كلمة “افرحوا”: بنعمل تصميم كبير ومميز باسم المؤتمر “افرحوا” بشكل مختلف كل سنة، مكان رئيسي للتصوير ويعبّر عن استايل السنه. 

• الـ Welcome Gifts: بنستقبل المشاركين بهدايا ترحيب بسيطة ومعبرة، علشان البداية تبقى مليانة فرح 

• المرجوحة: ركن خاص للتصوير مليان بهجة، بيبقى من أكتر الحاجات اللي بتشدكم وتخليكم تحتفظوا بلحظات مميزة. 

• هاند ميد & توزيعات: نصمّم أعمال يدوية وسوفنير تعبر عن طابع المؤتمر وروحه، بحيث كل قطعة تبقى ذكرى حية مرتبطة بالمؤتمر.

* التوزيع الروحي: بنوزع كمان الصلاة الخاصة بالمؤتمر.

* أماكن تصوير: نجهّز أركان تصوير مبهرة ومصممة بروح المؤتمر علشان كل صورة تبقى ذكري معبرة.

هدفنا مش مجرد ديكور أو توزيعات، لكن إن كل تفصيلة تعكس رسالة المؤتمر وتوصل للناس بصورة مبهجة وملموسة.
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
