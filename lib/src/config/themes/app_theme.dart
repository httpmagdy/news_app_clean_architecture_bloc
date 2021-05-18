import 'package:flutter/material.dart';

mixin AppTheme {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.black,
      accentColor: Colors.black,
      splashColor: Colors.transparent,
      fontFamily: 'IBM',
    );
  }
}
