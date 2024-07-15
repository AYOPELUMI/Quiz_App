import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constant.dart';

class CustomTextTheme{
  CustomTextTheme._();
   static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.poppins(
      fontSize: 24.0,
      color:primaryColor,
      fontWeight: FontWeight.w700 
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 16.0,
      color:Colors.black,
      fontWeight: FontWeight.w400 
    )
   );

      static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.poppins(
      fontSize: 24.0,
      color: Colors.white,
      fontWeight: FontWeight.w700 
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 16.0,
      color:Colors.white,
      fontWeight: FontWeight.w400 
    )
   );
}