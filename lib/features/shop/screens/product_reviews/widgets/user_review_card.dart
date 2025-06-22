import 'package:ecommerce_app/common/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/common/widgets/products/ratings/product_rating_indicator.dart';
import 'package:ecommerce_app/common/widgets/products/ream_more_text/read_more_text_widget.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return Column(
      children: [
        /// User Name, Picture, More Button
        Row(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  RoundedImage(
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    borderRadius: 100,
                    imageUrl: AppImages.userProfileImage2,
                  ),
                  SizedBox(width: AppSizes.spaceBtwItems),
                  Expanded(
                    child: Text(
                      "Abdullah Khan Kakar",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  )
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        SizedBox(height: AppSizes.spaceBtwItems),

        /// Review
        Row(
          children: [
            ProductRatingIndicator(rating: 4.5),
            SizedBox(width: AppSizes.spaceBtwItems),
            Text("01 Nov, 2023", style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        SizedBox(height: AppSizes.spaceBtwItems),
        ReadMoreTextWidget(
            trimLines: 2,
            text:
                "The user interface of the app is quite intitutive and imaginative. I really like the visually of the design and sometimes I feel that the colors used here are my favourite colors."),
        SizedBox(height: AppSizes.spaceBtwItems),

        /// Company Review
        CircularContainer(
          height: null,
          radius: AppSizes.md,
          paddingValue: AppSizes.md,
          backgroundColor: isDark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            children: [
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text("AB's Store",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                  Text("02 Nov, 2023",
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              SizedBox(height: AppSizes.spaceBtwItems),
              ReadMoreTextWidget(
                  trimLines: 2,
                  moreLessTextColor: AppColors.primary,
                  text:
                      "Thanks for such a beautiful review. We really like your review. We are always open to questions and customer queries to improve our system more and much better. We are working more on it everyday and also everyday we are tyring to make it more faster and accessible."),
            ],
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwSections),
      ],
    );
  }
}
