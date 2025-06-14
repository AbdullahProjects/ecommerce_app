import 'package:ecommerce_app/common/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/common/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_enums.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrollable) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: isDark ? AppColors.black : AppColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: AppSizes.spaceBtwItems),

                      /// Search bar
                      SearchContainer(
                        text: "Search in store",
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: AppSizes.spaceBtwSections),

                      /// Featured Brands
                      SectionHeading(
                          title: "Featured Brands", onPressed: () {}),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      GridView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: AppSizes.gridViewSpacing,
                                  crossAxisSpacing: AppSizes.gridViewSpacing,
                                  mainAxisExtent: 80),
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(AppSizes.sm),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      AppSizes.cardRadiusMd),
                                  border: Border.all(
                                    color: AppColors.grey,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: CircularImage(
                                          isNetworkImage: false,
                                          width: 56,
                                          height: 56,
                                          overlayColor: isDark
                                              ? AppColors.white
                                              : AppColors.black,
                                          image: AppImages.clothIcon),
                                    ),
                                    const SizedBox(
                                        width: AppSizes.spaceBtwItems / 2),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          BrandTitleTextWithVerticalIcon(
                                            text: "Nike",
                                            textSizes: TextSizes.large,
                                          ),
                                          Text(
                                            "256 products",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container(
            color: AppColors.primary,
            height: 2000,
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(100, (index) {
                  return Text("Index: $index");
                }),
              ),
            ),
          )),
    );
  }
}
