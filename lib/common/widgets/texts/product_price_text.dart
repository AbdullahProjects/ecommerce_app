import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText(
      {super.key,
      this.currencySign = "\$",
      required this.price,
      this.maxLines = 1,
      this.isLargeText = false,
      this.lineThrough = false});

  final String currencySign, price;
  final int maxLines;
  final bool isLargeText;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      style: isLargeText
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleSmall!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
