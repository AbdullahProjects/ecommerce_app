import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/checkbox_themes.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/elevated_button_themes.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/outline_button_themes.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/text_form_field_themes.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/text_themes.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.white,
    textTheme: AppTextThemes.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonThemes.lightElevatedButtonTheme,
    inputDecorationTheme: AppTextFormFieldThemes.lightInputDecorationTheme,
    checkboxTheme: AppCheckboxThemes.lightCheckboxTheme,
    outlinedButtonTheme: AppOutlineButtonThemes.lightOutlineButtonTheme,
    appBarTheme: AppBarThemes.lightAppBarTheme,
  );
  static ThemeData dartTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.black,
    textTheme: AppTextThemes.dartTextTheme,
    elevatedButtonTheme: AppElevatedButtonThemes.darkElevatedButtonTheme,
    inputDecorationTheme: AppTextFormFieldThemes.darkInputDecorationTheme,
    checkboxTheme: AppCheckboxThemes.darkCheckboxTheme,
    outlinedButtonTheme: AppOutlineButtonThemes.darkOutlineButtonTheme,
    appBarTheme: AppBarThemes.darkAppBarTheme,
  );
}
