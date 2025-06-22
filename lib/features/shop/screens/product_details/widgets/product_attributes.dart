import 'package:ecommerce_app/common/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/common/widgets/chips/chip_choice.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return Column(
      children: [
        /// Title, Price, and Stock Status
        CircularContainer(
          width: null,
          height: null,
          radius: 16,
          paddingValue: AppSizes.md,
          backgroundColor: isDark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SectionHeading(title: "Variation", showActionButton: false),
                  const SizedBox(width: AppSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ProductTitleText(title: "Price :", smallSize: true),
                          const SizedBox(width: AppSizes.spaceBtwItems / 2),

                          /// Actual Price
                          ProductPriceText(
                            price: "250",
                            isLargeText: false,
                            lineThrough: true,
                          ),
                          const SizedBox(width: AppSizes.spaceBtwItems),

                          /// Sale Price
                          ProductPriceText(
                            price: "220",
                            isLargeText: false,
                            lineThrough: false,
                          ),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          ProductTitleText(
                            title: "Stock :",
                            smallSize: true,
                          ),
                          SizedBox(width: AppSizes.spaceBtwItems / 2),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems / 2),

              /// Variation Description
              ProductTitleText(
                title: "This is the description of the product.",
                maxLines: 4,
                smallSize: true,
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: "Colors", showActionButton: false),
            SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              children: [
                AppChipChoiceColor(color: Colors.green, isSelected: true),
                AppChipChoiceColor(color: Colors.blue, isSelected: false),
                AppChipChoiceColor(
                    color: Colors.purpleAccent, isSelected: false),
                AppChipChoiceColor(color: Colors.amber, isSelected: false),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: "Size", showActionButton: false),
            SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AppChipChoiceSize(text: "EU 32", isSelected: true),
                AppChipChoiceSize(text: "EU 34", isSelected: false),
                AppChipChoiceSize(text: "EU 36", isSelected: false),
                AppChipChoiceSize(text: "EU 32", isSelected: true),
                AppChipChoiceSize(text: "EU 34", isSelected: false),
                AppChipChoiceSize(text: "EU 36", isSelected: false),
                AppChipChoiceSize(text: "EU 32", isSelected: true),
                AppChipChoiceSize(text: "EU 34", isSelected: false),
                AppChipChoiceSize(text: "EU 36", isSelected: false),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
