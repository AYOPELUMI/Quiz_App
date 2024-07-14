import 'package:flutter/material.dart';

import '../constants/constant.dart';

class MyAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor : primaryColor,
    scaffoldBackgroundColor: Colors.white10
    
  );
}