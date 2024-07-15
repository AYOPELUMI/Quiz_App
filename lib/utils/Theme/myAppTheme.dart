import 'package:flutter/material.dart';

import '../constants/constant.dart';
import 'Custom Theme/text_theme.dart';

class MyAppTheme {
  MyAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor : primaryColor,
    scaffoldBackgroundColor: Colors.white10,
    textTheme : CustomTextTheme.lightTextTheme
  );

    static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor : Colors.white,
    scaffoldBackgroundColor: Colors.black,
    textTheme : CustomTextTheme.darkTextTheme
  );
}