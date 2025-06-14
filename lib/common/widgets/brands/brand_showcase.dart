import 'package:ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.md, vertical: AppSizes.sm),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusMd),
        border: Border.all(
          color: AppColors.grey,
        ),
      ),
      child: Column(
        children: [
          /// Brand info
          BrandCard(showBorder: false),
          const SizedBox(height: AppSizes.spaceBtwItems),

          /// Brand with 3 product images
          Row(
            children: images
                .map((image) => brandTopProductImage(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImage(String image, context) {
    return Expanded(
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(AppSizes.md),
        margin: const EdgeInsets.only(right: AppSizes.sm),
        decoration: BoxDecoration(
          color: AppDeviceUtility.isDarkMode(context)
              ? AppColors.darkerGrey
              : AppColors.light,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        ),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
