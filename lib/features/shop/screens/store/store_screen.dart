import 'package:ecommerce_app/common/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/appbar/custom_tabbar.dart';
import 'package:ecommerce_app/common/widgets/brands/brand_showcase.dart';
import 'package:ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                expandedHeight: 400,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
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
                                  mainAxisExtent: 70),
                          itemBuilder: (_, index) {
                            return BrandCard();
                          }),
                    ],
                  ),
                ),

                /// Tab bar
                bottom: CustomTabBar(
                  tabs: [
                    Tab(text: "Sports"),
                    Tab(text: "Furniture"),
                    Tab(text: "Electronics"),
                    Tab(text: "Clothes"),
                    Tab(text: "Cosmetics"),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
