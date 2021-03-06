import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.black;

  /*static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color Primario
    primaryColor: Colors.indigo,
    //AppBar Theme
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
  );*/

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Color Primario
      primaryColor: Colors.indigo,
      //AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      //TextButton

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: Colors.blueGrey),
      ),
      scaffoldBackgroundColor: Colors.grey);
}
