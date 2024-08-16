import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color lightPrimaryColor = Color(0xffB7935F);
  static const Color lightSecondryColor = Color(0xff242424);
  static const TextStyle styleText = TextStyle(
    fontSize: 25,
    color: lightSecondryColor,
  );
  static ThemeData lightTheme = ThemeData(
      fontFamily: GoogleFonts.elMessiri().fontFamily,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30,
            color: Color(0xff242424),
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffB7935F),
        selectedItemColor: Color(0xff242424),
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontFamily: GoogleFonts.elMessiri().fontFamily,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyLarge: TextStyle(
          fontFamily: GoogleFonts.elMessiri().fontFamily,
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        bodyMedium: TextStyle(
          fontFamily: GoogleFonts.elMessiri().fontFamily,
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        bodySmall: TextStyle(
          fontFamily: GoogleFonts.elMessiri().fontFamily,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      dividerTheme: DividerThemeData(
        color: AppTheme.lightPrimaryColor,
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      fontFamily: GoogleFonts.elMessiri().fontFamily,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30,
            color: Color(0xff242424),
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff141A2E),
        selectedItemColor: Color(0xffFACC1D),
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
      ));
}
