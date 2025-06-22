import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_enums.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price and Sales Tag
        Row(
          children: [
            /// Sales Tag
            Container(
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
            const SizedBox(width: AppSizes.spaceBtwItems),

            /// Discounted Price
            ProductPriceText(
              price: "250",
              isLargeText: false,
              lineThrough: true,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),

            /// Actual Price
            ProductPriceText(
              price: "250",
              isLargeText: true,
            ),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        /// Product Title
        ProductTitleText(title: "Nike Sports Shirt For Men"),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            ProductTitleText(title: "Status: "),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text("In Stock", style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        /// Brand Info
        Row(
          children: [
            CircularImage(
              width: 32,
              height: 32,
              image: AppImages.cosmeticsIcon,
              overlayColor: isDark ? AppColors.white : AppColors.black,
            ),
            BrandTitleTextWithVerticalIcon(
              text: "Nike",
              textSizes: TextSizes.medium,
            ),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),
      ],
    );
  }
}
