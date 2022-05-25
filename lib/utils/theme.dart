import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyAppTheme {
  static ThemeData lightTheme() => ThemeData(
      appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.dark)));
}
