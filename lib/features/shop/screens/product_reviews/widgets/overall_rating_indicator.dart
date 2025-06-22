import 'package:ecommerce_app/features/shop/screens/product_reviews/widgets/review_rating_bar.dart';
import 'package:flutter/material.dart';

class OverallRatingIndicator extends StatelessWidget {
  const OverallRatingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "4.8",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              ReviewRatingBar(text: "5", value: 1),
              ReviewRatingBar(text: "4", value: 0.8),
              ReviewRatingBar(text: "3", value: 0.6),
              ReviewRatingBar(text: "2", value: 0.4),
              ReviewRatingBar(text: "1", value: 0.2),
            ],
          ),
        ),
      ],
    );
  }
}
