import 'package:ecommerce_app/common/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/common/custom_shapes/containers/custom_header_container.dart';
import 'package:ecommerce_app/common/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/controllers/home_controller.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_slider.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/constants/app_texts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            CustomHeader(
              child: Column(
                children: [
                  /// Appbar
                  HomeAppBar(),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  /// Search box
                  SearchContainer(
                    text: AppTexts.searchInStore,
                    onTap: () {},
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        SectionHeading(
                          title: "Popular Categories",
                          textColor: AppColors.white,
                          showActionButton: false,
                        ),
                        const SizedBox(height: AppSizes.spaceBtwItems),

                        /// Categories
                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: HomeSlider(
                banners: [
                  AppImages.banner1,
                  AppImages.banner2,
                  AppImages.banner3,
                  AppImages.banner4,
                  AppImages.banner5,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
