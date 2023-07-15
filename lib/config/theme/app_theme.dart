import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
      iconTheme: const IconThemeData(color: color0079FE),
      primaryColor: Colors.white,
      colorScheme: const ColorScheme.dark(),
      scaffoldBackgroundColor: colorPrimary,
      //useMaterial3: true,
      fontFamily: GoogleFonts.robotoMono().fontFamily,
      appBarTheme: const AppBarTheme(backgroundColor: colorPrimary),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(TextStyle(
              color: color0079FE,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: GoogleFonts.robotoMono().fontFamily)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
            padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: 15)),
            textStyle: MaterialStatePropertyAll(TextStyle(
                color: colorFFFBF2,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: GoogleFonts.robotoMono().fontFamily)),
            backgroundColor: const MaterialStatePropertyAll(color0079FE)),
      ),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: Colors.white),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        hintStyle: const TextStyle(color: color92979E),
        fillColor: colorSecondary, //sec.withOpacity(0.5),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:
              BorderSide(color: color141218.withOpacity(0.05), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: color141218.withOpacity(0.05), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: color141218.withOpacity(0.05), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: color141218.withOpacity(0.05), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ));
}
