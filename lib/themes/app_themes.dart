import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class AppThemes {
  static const Color primary = Color.fromARGB(255, 172, 145, 223);
  static final ThemeData amberDarkTheme = ThemeData.dark().copyWith(
      primaryColor: const Color.fromARGB(255, 202, 179, 255),
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));

  static final ThemeData amberLightTheme = ThemeData.light().copyWith(
      primaryColor: const Color.fromARGB(255, 202, 179, 255),
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
}
