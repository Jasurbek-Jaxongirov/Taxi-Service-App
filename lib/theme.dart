import 'package:flutter/material.dart';

class TaxiServiceAppTheme {
  static TextTheme darkTextTheme = const TextTheme(
    bodyText1: TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline6: TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline2: TextStyle(
      fontSize: 38.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline4: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
  );

  static ThemeData darkTheme() {
    return ThemeData(textTheme: darkTextTheme, fontFamily: 'SF Pro Display');
  }
}
