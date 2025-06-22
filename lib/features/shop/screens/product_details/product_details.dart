import 'package:ecommerce_app/common/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/common/widgets/products/ream_more_text/read_more_text_widget.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/product_reviews_screen.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),
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
                  ProductAttributes(),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  /// -- Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Checkout"),
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  /// - Description
                  SectionHeading(title: "Description", showActionButton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  ReadMoreTextWidget(
                    text:
                        "Nike shoes are known for their innovative technologies and diverse range of styles, catering to various sports and casual wear. They are designed by athletes for athletes, with a focus on performance and comfort.  Nike shoes are known for their blend of performance, style, and innovation. They are designed to cater to a wide range of needs and preferences, from athletes seeking optimal performance to casual wear enthusiasts looking for trendy and comfortable footwear.",
                    trimLines: 4,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),

                  /// - Reviews
                  Divider(height: 2),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(
                          title: "Reviews (120)",
                          onPressed: () => Get.to(() => ProductReviewsScreen()),
                          showActionButton: false),
                      Icon(
                        Iconsax.arrow_right_3,
                        size: 18,
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
