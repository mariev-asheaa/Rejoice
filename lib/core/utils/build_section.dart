import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildSection extends StatelessWidget {
  const BuildSection({super.key, required this.title, required this.content});
  final String title,content;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 3,
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: ExpansionTile(
          title: Text(
            title,
            style: GoogleFonts.cairo(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Center(
                child: Text(
                  content,
                  style: GoogleFonts.amiri(
                    fontSize: 20,
                    height: 1.6,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
