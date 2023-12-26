import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextApp {
  static TextStyle title = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.alegreya().fontFamily,
    color: Colors.white,
  );
  static TextStyle subtitle = TextStyle(
    fontSize: 16,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: Colors.white,
  );
  static TextStyle link = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w100,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: Colors.white,
  );
}
