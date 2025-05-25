import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AppOutlineButtonThemes {
  AppOutlineButtonThemes._();

  static OutlinedButtonThemeData lightOutlineButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.dark,
      side: const BorderSide(color: AppColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16, color: AppColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: AppSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
    ),
  );

  static OutlinedButtonThemeData darkOutlineButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.light,
      side: const BorderSide(color: AppColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.textWhite,
          fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: AppSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
    ),
  );
}
