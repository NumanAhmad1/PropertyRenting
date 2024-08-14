import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_renting/core/appColors.dart';
import 'package:property_renting/core/theme.dart';

class AppTextStyles{

  const AppTextStyles._();
  static const instance = AppTextStyles._();
  factory AppTextStyles() =>instance;


  TextTheme get lightTextTheme => TextTheme(
      headlineLarge: TextStyle(
        color: LightColor().colorScheme.secondary,
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: TextStyle(
        color: LightColor().colorScheme.secondary,
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        color: LightColor().colorScheme.onPrimary,
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 10,
        fontWeight: FontWeight.w300,
      ),
      bodySmall: TextStyle(
        color: LightColor().colorScheme.onPrimary,
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 8,
        fontWeight: FontWeight.w300,
      ),
      labelLarge: TextStyle(
        color: LightColor().colorScheme.surface,
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      labelMedium: TextStyle(
        color: LightColor().colorScheme.onPrimary,
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: TextStyle(
        color: LightColor().colorScheme.surface,
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 8,
        fontWeight: FontWeight.w200,
      )
  );

}


extension stylesForText on BuildContext{
  TextStyle? get h3 => theme.textTheme.headlineLarge;
  TextStyle? get h2 => theme.textTheme.headlineMedium;
  TextStyle? get paraLarge => theme.textTheme.bodyMedium;
  TextStyle? get paraSmall => theme.textTheme.bodySmall;
  TextStyle? get buttonText => theme.textTheme.labelLarge;
  TextStyle? get labelMedium => theme.textTheme.labelMedium;
  TextStyle? get labelSmall => theme.textTheme.labelSmall;
}