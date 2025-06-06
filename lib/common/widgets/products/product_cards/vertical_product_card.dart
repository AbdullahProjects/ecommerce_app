import 'package:ecommerce_app/common/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/common/styles/shadow_styles.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return Container(
      height: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [ShadowStyles.verticalProductShadow],
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: isDark ? AppColors.darkerGrey : AppColors.white,
      ),
      child: Stack(
        children: [
          /// Thumbnail, Discount, Wishlist Button
          RoundedImage(
            height: 175,
            imageUrl: AppImages.productImage1,
            applyImageRadius: true,
          ),

          /// Sales tag
          Positioned(
            top: 12,
            left: 12,
            child: Container(
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
                color: AppColors.secondary,
              ),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AppColors.black),
              ),
            ),
          ),

          /// Favourite Icon Button
          Positioned(
            right: 12,
            top: 12,
            child: Container(
              decoration: BoxDecoration(
                color: isDark
                    ? AppColors.black.withValues(alpha: 0.9)
                    : AppColors.white.withValues(alpha: 0.9),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Iconsax.favorite_chart),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
