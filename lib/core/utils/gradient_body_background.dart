import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientBodyBackground extends StatelessWidget {
  const GradientBodyBackground({super.key, required this.arabicText});
final String arabicText;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff0d324d), Color(0xff7f5a83)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40),
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
      ),
    );
  }
}
