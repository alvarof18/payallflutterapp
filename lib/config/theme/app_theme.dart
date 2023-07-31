import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors_app.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        colorScheme: const ColorScheme.light(
          primary: primaryColor,
          secondary: secondaryColor,
        ),
        textTheme: GoogleFonts.urbanistTextTheme().copyWith(
          displayLarge:
              const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          displayMedium:
              const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          displaySmall:
              const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      );
}

TextStyle headLine4 = AppTheme()
    .getTheme()
    .textTheme
    .displayLarge!
    .copyWith(fontSize: 24, fontWeight: FontWeight.bold);

TextStyle headLine5 = AppTheme()
    .getTheme()
    .textTheme
    .displayLarge!
    .copyWith(fontSize: 20, fontWeight: FontWeight.bold);

TextStyle headLine6 = AppTheme()
    .getTheme()
    .textTheme
    .displayLarge!
    .copyWith(fontSize: 18, fontWeight: FontWeight.bold);
