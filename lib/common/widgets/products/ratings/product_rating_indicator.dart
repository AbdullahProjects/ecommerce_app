import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class ProductRatingIndicator extends StatelessWidget {
  const ProductRatingIndicator({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      unratedColor: AppColors.grey,
      itemCount: 5,
      itemSize: 20,
      itemBuilder: (_, __) => Icon(
        Iconsax.star1,
        color: AppColors.primary,
      ),
    );
  }
}
