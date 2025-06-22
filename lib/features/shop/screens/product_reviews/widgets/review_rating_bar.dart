import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ReviewRatingBar extends StatelessWidget {
  const ReviewRatingBar({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 10,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 11,
            backgroundColor: AppColors.grey,
            valueColor: AlwaysStoppedAnimation(AppColors.primary),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
  }
}
