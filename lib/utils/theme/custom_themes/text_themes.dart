import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextThemes {
  AppTextThemes._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: AppColors.dark),
    headlineMedium: TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: AppColors.dark),
    headlineSmall: TextStyle().copyWith(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.dark),
    titleLarge: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.dark),
    titleMedium: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: AppColors.dark),
    titleSmall: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: AppColors.dark),
    bodyLarge: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: AppColors.dark),
    bodyMedium: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: AppColors.dark),
    bodySmall: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: AppColors.dark),
    labelLarge: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.bold, color: AppColors.dark),
    labelMedium: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: AppColors.dark),
  );

  static TextTheme dartTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: AppColors.light),
    headlineMedium: TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: AppColors.light),
    headlineSmall: TextStyle().copyWith(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.light),
    titleLarge: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.light),
    titleMedium: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: AppColors.light),
    titleSmall: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: AppColors.light),
    bodyLarge: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: AppColors.light),
    bodyMedium: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: AppColors.light),
    bodySmall: TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: AppColors.light),
    labelLarge: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: AppColors.light),
    labelMedium: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: AppColors.light),
  );
}
