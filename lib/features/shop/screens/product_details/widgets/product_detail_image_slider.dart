import 'package:ecommerce_app/common/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailImageSlider extends StatelessWidget {
  const ProductDetailImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return CurvedEdgesWidget(
      child: Container(
        color: isDark ? AppColors.darkerGrey : AppColors.light,
        child: Stack(
          children: [
            /// Main Product Images
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(AppImages.productImage5))),
              ),
            ),

            /// Image Slider
            Positioned(
              left: AppSizes.defaultSpace,
              right: 0,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  separatorBuilder: (_, __) => SizedBox(
                    width: AppSizes.spaceBtwItems,
                  ),
                  itemCount: 6,
                  itemBuilder: (_, index) {
                    return RoundedImage(
                        width: 80,
                        padding: const EdgeInsets.all(AppSizes.sm),
                        border: Border.all(color: AppColors.primary),
                        imageUrl: AppImages.productImage1);
                  },
                ),
              ),
            ),

            /// Appbar
            CustomAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(
                  icon: Iconsax.heart5,
                  onPressed: () {},
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
