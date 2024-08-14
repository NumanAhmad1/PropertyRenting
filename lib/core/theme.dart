import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property_renting/core/textStyles.dart';

import 'appColors.dart';

class AppTheme {

  const AppTheme._();
  factory AppTheme() => instance;
  static const instance = AppTheme._();


  ThemeData get lightTheme {
    return ThemeData().copyWith(
      primaryColor: LightColor().primary,
      scaffoldBackgroundColor: LightColor().surface,
      colorScheme: LightColor().colorScheme,
      brightness: LightColor().brightness,
      textTheme: AppTextStyles().lightTextTheme,
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: LightColor().onPrimary),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: LightColor().onPrimary),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: LightColor().onPrimary),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
        // .copyWith(
      // primaryColor: colors.kPrimaryColor,
      // cardColor: colors.kWhiteColor,
      // brightness: Brightness.light,
      // hoverColor: colors.kBlackColor,
      // secondaryHeaderColor: colors.kGreenColor,
      // highlightColor: colors.kTextLightGrayColor,
      // textTheme: TextTheme(
      //   headlineLarge: TextStyle(
      //     color: colors.kBlackColor,
      //     fontFamily: GoogleFonts.poppins().fontFamily,
      //     fontSize: 18,
      //     fontWeight: FontWeight.w500,
      //   ),
      //   headlineMedium: TextStyle(
      //     color: colors.kBlackColor,
      //     fontFamily: GoogleFonts.poppins().fontFamily,
      //     fontSize: 24,
      //     fontWeight: FontWeight.w400,
      //   ),
      //   bodyMedium: TextStyle(
      //     color: colors.kBlackColor,
      //     fontFamily: GoogleFonts.poppins().fontFamily,
      //     fontSize: 10,
      //     fontWeight: FontWeight.w500,
      //   ),
      //   bodySmall: TextStyle(
      //     color: colors.kBlackColor,
      //     fontFamily: GoogleFonts.poppins().fontFamily,
      //     fontSize: 8,
      //     fontWeight: FontWeight.w300,
      //   ),
      //   labelLarge: TextStyle(
      //     color: colors.kWhiteColor,
      //     fontFamily: GoogleFonts.poppins().fontFamily,
      //     fontSize: 14,
      //     fontWeight: FontWeight.w700,
      //   ),
      //   labelMedium: TextStyle(
      //     color: colors.kBlackColor,
      //     fontFamily: GoogleFonts.poppins().fontFamily,
      //     fontSize: 14,
      //     fontWeight: FontWeight.w400,
      //   ),
      //   labelSmall: TextStyle(
      //     color: colors.kWhiteColor,
      //     fontFamily: GoogleFonts.poppins().fontFamily,
      //     fontSize: 8,
      //     fontWeight: FontWeight.w200,
      //   )
      // ),

    // );

  }
}
