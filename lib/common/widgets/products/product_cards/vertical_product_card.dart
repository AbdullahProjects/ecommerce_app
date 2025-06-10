import 'package:ecommerce_app/common/styles/shadow_styles.dart';
import 'package:ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
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

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyles.verticalProductShadow],
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          color: isDark ? AppColors.darkerGrey : AppColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Thumbnail, Wishlist button, Discount tag
            Container(
              height: 180,
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                boxShadow: [ShadowStyles.verticalProductShadow],
                borderRadius:
                    BorderRadius.circular(AppSizes.productImageRadius),
                color: isDark ? AppColors.darkerGrey : AppColors.white,
              ),
              child: Stack(
                children: [
                  /// Thumbnail, Discount, Wishlist Button
                  RoundedImage(
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
                        borderRadius:
                            BorderRadius.circular(AppSizes.buttonRadius),
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
                    right: 10,
                    top: 10,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),

            /// Product Details
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: "Green Nike Air Shoes",
                    smallSize: true,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text("Nike",
                          maxLines: 1,
                          style: Theme.of(context).textTheme.labelMedium),
                      const SizedBox(width: AppSizes.sm),
                      Icon(Iconsax.verify5,
                          size: AppSizes.iconSm, color: AppColors.primary),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      Text(
                        "\$35.55",
                        style: Theme.of(context).textTheme.headlineMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(AppSizes.productImageRadius),
                          ),
                        ),
                        child: SizedBox(
                          width: AppSizes.iconLg + 5,
                          height: AppSizes.iconLg + 5,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
