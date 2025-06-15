import 'package:ecommerce_app/common/widgets/brands/brand_showcase.dart';
import 'package:ecommerce_app/common/widgets/products/product_cards/vertical_product_card.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultSpace),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          /// Brands
          BrandShowcase(images: [
            AppImages.productImage1,
            AppImages.productImage2,
            AppImages.productImage3,
          ]),
          const SizedBox(height: AppSizes.spaceBtwItems),

          /// Products
          SectionHeading(title: "You might like", onPressed: () {}),
          const SizedBox(height: AppSizes.spaceBtwItems),

          GridView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: AppSizes.gridViewSpacing,
                  mainAxisSpacing: AppSizes.gridViewSpacing,
                  mainAxisExtent: 290),
              itemBuilder: (_, index) {
                return VerticalProductCard();
              }),
          const SizedBox(height: AppSizes.spaceBtwSections),
        ],
      ),
    );
  }
}
