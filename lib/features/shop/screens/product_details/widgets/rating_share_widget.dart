import 'package:ecommerce_app/common/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Rating
        Row(
          children: [
            Icon(Iconsax.star5, color: Colors.amber),
            const SizedBox(width: AppSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: "5.0 ",
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: "(192)"),
                ],
              ),
            )
          ],
        ),

        /// Share Button
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.share,
            size: AppSizes.iconMd,
          ),
        ),
      ],
    );
  }
}
