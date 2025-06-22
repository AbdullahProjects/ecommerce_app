import 'package:ecommerce_app/common/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Images
            ProductDetailImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(
                  left: AppSizes.defaultSpace,
                  right: AppSizes.defaultSpace,
                  bottom: AppSizes.defaultSpace),
              child: Column(
                children: [
                  /// - Rating and Share Button
                  RatingAndShare(),

                  /// - Price, Title, Stock & Brand
                  ProductMetaData(),

                  /// -- Attributes
                  /// -- Checkout Button
                  /// - Description
                  /// - Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
