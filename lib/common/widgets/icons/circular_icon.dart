import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon(
      {super.key,
      this.width,
      this.height,
      this.size,
      required this.icon,
      this.color,
      this.backgroundColor,
      required this.onPressed});

  final double? width, height, size;
  final IconData icon;
  final Color? color, backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ??
            (isDark
                ? AppColors.black.withValues(alpha: 0.9)
                : AppColors.white.withValues(alpha: 0.9)),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
