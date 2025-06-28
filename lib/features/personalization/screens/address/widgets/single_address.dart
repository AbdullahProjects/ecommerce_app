import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      width: double.infinity,
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.primary.withValues(alpha: 0.5)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
            color: isSelected
                ? Colors.transparent
                : isDark
                    ? AppColors.darkerGrey
                    : AppColors.grey),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Abdullah Khan",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 4),
                Text("+92 3289989099",
                    maxLines: 1, overflow: TextOverflow.ellipsis),
                const SizedBox(height: 4),
                Text("Flat # 205, Floor 2nd, Near Karachi Swear, Karachi",
                    maxLines: 1, overflow: TextOverflow.ellipsis),
                const SizedBox(height: 4),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 5,
            child: Icon(
              isSelected ? Iconsax.tick_circle5 : null,
              color: isSelected
                  ? isDark
                      ? AppColors.light
                      : AppColors.dark
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
