import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AppElevatedButtonThemes {
  AppElevatedButtonThemes._();

  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.light,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.darkerGrey,
      disabledBackgroundColor: AppColors.buttonDisabled,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      side: BorderSide(color: AppColors.primary),
      padding: EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16,
        color: AppColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
    ),
  );

  static ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.light,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.darkGrey,
      disabledBackgroundColor: AppColors.buttonDisabled,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      side: BorderSide(color: AppColors.primary),
      padding: EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16,
        color: AppColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
