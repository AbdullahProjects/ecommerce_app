import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_app/common/widgets/products/product_cards/vertical_product_card.dart';
import 'package:ecommerce_app/features/shop/screens/home/home_screen.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularIcon(
              icon: Iconsax.add,
              onPressed: () => Get.to(() => const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: AppSizes.gridViewSpacing,
                      crossAxisSpacing: AppSizes.gridViewSpacing,
                      mainAxisExtent: 290),
                  itemBuilder: (_, index) {
                    return VerticalProductCard();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
