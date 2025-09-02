import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WesalTextStyles {
  static final TextStyle header30Bold = GoogleFonts.gravitasOne(
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle header20Bold = GoogleFonts.merriweather(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle bold16 = GoogleFonts.merriweather(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle bold14 = GoogleFonts.merriweather(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle smallHeaderBold12 = GoogleFonts.merriweather(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.0,
    textBaseline: TextBaseline.alphabetic,
  );

  // SemiBold styles
  static final TextStyle subheader18SemiBold = GoogleFonts.merriweather(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle semiBold14 = GoogleFonts.merriweather(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  // Regular styles
  static final TextStyle base16 = GoogleFonts.merriweather(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle secondary14 = GoogleFonts.merriweather(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle smallText12 = GoogleFonts.merriweather(
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );
}
