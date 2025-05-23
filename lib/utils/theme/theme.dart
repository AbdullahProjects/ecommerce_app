import 'package:ecommerce_app/utils/theme/custom_themes/elevated_button_themes.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/text_themes.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextThemes.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonThemes.lightElevatedButtonTheme,
  );
  static ThemeData dartTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextThemes.dartTextTheme,
    elevatedButtonTheme: AppElevatedButtonThemes.darkElevatedButtonTheme,
  );
}
