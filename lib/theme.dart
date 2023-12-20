import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// App에 사용하는 반복적인 글꼴과 색상들을 매번 지정하는 것은 번거로운 작업
// 자주 사용되는 설정들을 모아둘 예정

TextTheme textTheme() {
  return TextTheme(
      displayLarge: GoogleFonts.openSans(
        fontSize: 18.0,
        color: Colors.black,
      ),
      displayMedium: GoogleFonts.openSans(
        fontSize: 16.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
      bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.black),
      titleMedium:
          GoogleFonts.nanumGothic(fontSize: 15.0, color: Colors.black));
}

IconThemeData iconTheme() {
  return const IconThemeData(color: Colors.black);
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: false,
    elevation: 0.0,
    iconTheme: iconTheme(),
    titleTextStyle: GoogleFonts.nanumGothic(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
}

BottomNavigationBarThemeData bottomNavigationBarThemeData() {
  return const BottomNavigationBarThemeData(
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.black54,
      showUnselectedLabels: true);
}

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      textTheme: textTheme(),
      iconTheme: iconTheme(),
      appBarTheme: appBarTheme(),
      bottomNavigationBarTheme: bottomNavigationBarThemeData());
}
