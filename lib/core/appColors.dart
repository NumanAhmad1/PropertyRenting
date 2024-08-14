import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppColors {
  // Private constructor
  const AppColors();
  get brightness;
  get primary;
  get onPrimary;
  get secondary;
  get onSecondary;
  get error;
  get onError;
  get surface;
  get onSurface;


  ColorScheme get colorScheme => ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      onSecondary: onSecondary,
      error: error,
      onError: onError,
      surface: surface,
      onSurface: onSurface,);

  // Define your colors here
  // final Color kPrimaryColor = const Color(0xFFFF366B);
  // final Color kBlackColor = const Color(0xFF1E1E1E);
  // final Color kTextLightGrayColor = const Color(0xFF828282);
  // final Color kWhiteColor = const Color(0xFFFFFFFF);
  // final Color kGreenColor = const Color(0xFF61A018).withOpacity(0.8);
}

class LightColor extends AppColors{
  const LightColor._();
  static const instance = LightColor._();
  factory LightColor()=> instance;
  @override
  get brightness => Brightness.light;

  @override
  get error => Colors.red;

  @override
  get onError => Colors.red;

  @override
  get onPrimary => const Color(0xFF828282);

  @override
  get onSecondary => Colors.blue;

  @override
  get onSurface => const Color(0xFF61A018).withOpacity(0.8);

  @override
  get primary => const Color(0xFFFF366B);

  @override
  get secondary => const Color(0xFF1E1E1E);

  @override
  get surface => const Color(0xFFFFFFFF);

}


extension ColorSchemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);

  Color get primaryColor => theme.colorScheme.primary;
  Color get blackColor => theme.colorScheme.secondary;
  Color get greenColor => theme.colorScheme.onSurface;
  Color get redColor => theme.colorScheme.error;
  Color get whiteColor => theme.colorScheme.surface;
  Color get lightGrayColor => theme.colorScheme.onPrimary;
  TextTheme get textTheme => theme.textTheme;
}
