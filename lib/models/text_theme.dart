import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData.light().copyWith(
  textTheme: lightTextTheme,
);

final darkTheme = ThemeData.dark().copyWith(
  textTheme: darkTextTheme,
);

final lightTextTheme = TextTheme(
  labelLarge: GoogleFonts.firaSans(color: Colors.black),
  labelSmall: GoogleFonts.firaSans(
    fontSize: 8,
    color: Colors.black26,
  ),
  bodyLarge: GoogleFonts.firaSans(
    fontSize: 16,
    color: Colors.black,
  ),
  headlineMedium: GoogleFonts.firaSans(color: Colors.black),
  headlineSmall: GoogleFonts.firaSans(color: Colors.black),
  headlineLarge: GoogleFonts.firaSans(color: Colors.black),
  displaySmall: GoogleFonts.firaSans(color: Colors.black),
  labelMedium: GoogleFonts.firaSans(color: Colors.black),
  titleLarge: GoogleFonts.firaSans(
      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
  bodyMedium: GoogleFonts.firaSans(color: Colors.black, fontSize: 12),
  bodySmall: GoogleFonts.firaSans(
    color: Colors.black,
  ),
);

final darkTextTheme = TextTheme(
  labelLarge: GoogleFonts.firaSans(color: Colors.white),
  labelSmall: GoogleFonts.firaSans(
    fontSize: 8,
    color: Colors.white70,
  ),
  bodyLarge: GoogleFonts.firaSans(
    fontSize: 16,
    color: Colors.white,
  ),
  headlineMedium: GoogleFonts.firaSans(color: Colors.white),
  displaySmall: GoogleFonts.firaSans(color: Colors.white),
  labelMedium: GoogleFonts.firaSans(color: Colors.white),
  titleLarge: GoogleFonts.firaSans(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
  bodyMedium: GoogleFonts.firaSans(color: Colors.white70, fontSize: 12),
  bodySmall: GoogleFonts.firaSans(color: Colors.white70),
  headlineSmall: GoogleFonts.firaSans(color: Colors.white),
);
