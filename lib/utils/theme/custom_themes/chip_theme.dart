import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppChipTheme {
  AppChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: AppColors.grey.withValues(alpha: 0.4),
    labelStyle: TextStyle(color: AppColors.black),
    selectedColor: AppColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: AppColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: AppColors.darkerGrey,
    labelStyle: TextStyle(color: AppColors.white),
    selectedColor: AppColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: AppColors.white,
  );
}
