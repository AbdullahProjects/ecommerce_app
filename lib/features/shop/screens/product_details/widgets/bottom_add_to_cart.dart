import 'package:ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.defaultSpace,
          vertical: AppSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkerGrey : AppColors.light,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(AppSizes.cardRadiusLg),
          topLeft: Radius.circular(AppSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Increase or Decrease Count
          Row(
            children: [
              CircularIcon(
                icon: Iconsax.minus,
                backgroundColor: AppColors.darkGrey,
                width: 40,
                height: 40,
                color: AppColors.white,
                onPressed: () {},
              ),
              SizedBox(width: AppSizes.spaceBtwItems),
              Text("2", style: Theme.of(context).textTheme.titleMedium),
              SizedBox(width: AppSizes.spaceBtwItems),
              CircularIcon(
                icon: Iconsax.add,
                backgroundColor: AppColors.black,
                width: 40,
                height: 40,
                color: AppColors.white,
                onPressed: () {},
              ),
            ],
          ),

          /// Add to cart Button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(AppSizes.md),
              backgroundColor: AppColors.black,
              side: BorderSide(color: AppColors.black),
            ),
            child: Text("Add to Cart"),
          ),
        ],
      ),
    );
  }
}
