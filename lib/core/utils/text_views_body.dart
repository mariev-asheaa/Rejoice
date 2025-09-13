import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBody extends StatelessWidget {
  const TextBody({super.key, required this.arabicText});
final String arabicText;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding:  EdgeInsets.all(35),
        child: SingleChildScrollView(
          child: Center(
            child: Text(
              arabicText,
              style: GoogleFonts.cairo(
                fontSize: 22,
                height: 1.8,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
