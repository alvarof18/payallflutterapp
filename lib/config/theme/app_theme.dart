import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors_app.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      // splashColor: Colors.transparent,
      //highlightColor: Colors.transparent,
      // hoverColor: Colors.transparent,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
      ),
      textTheme: GoogleFonts.urbanistTextTheme().copyWith(
        displayLarge: TextStyle(
            fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey[100]),
        displayMedium:
            const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        displaySmall:
            const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ));
}

final textStyleApp = AppTheme().getTheme().textTheme;

final bodyMedium14 = AppTheme().getTheme().textTheme.bodyMedium!.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey[500],
    letterSpacing: 1.3);

//bold
final bodyLarge16 = AppTheme()
    .getTheme()
    .textTheme
    .bodyMedium!
    .copyWith(fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1.3);

//Semibold
final bodyLarge14 = AppTheme()
    .getTheme()
    .textTheme
    .bodyMedium!
    .copyWith(fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 1.3);
