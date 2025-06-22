import 'package:ecommerce_app/common/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/common/widgets/products/ratings/product_rating_indicator.dart';
import 'package:ecommerce_app/common/widgets/products/ream_more_text/read_more_text_widget.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/widgets/overall_rating_indicator.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/widgets/review_rating_bar.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return Scaffold(
      /// Appbar
      appBar: CustomAppBar(
        title: Text("Reviews & Ratings"),
        showBackArrow: true,
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Ratings and reviews are verified and are from people who use the same type of device that you use"),
              SizedBox(height: AppSizes.spaceBtwItems),

              /// Overall Product Rating
              OverallRatingIndicator(),
              ProductRatingIndicator(rating: 4.2),
              SizedBox(height: AppSizes.spaceBtwSections),

              /// User Reviews List
              UserReviewCard(isDark: isDark),
              UserReviewCard(isDark: isDark),
              UserReviewCard(isDark: isDark),
            ],
          ),
        ),
      ),
    );
  }
}

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
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
