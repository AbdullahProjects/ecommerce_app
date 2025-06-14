import 'package:ecommerce_app/utils/constants/app_enums.dart';
import 'package:flutter/material.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText(
      {super.key,
      required this.text,
      this.textColor,
      this.maxLines = 1,
      this.align = TextAlign.start,
      this.textSizes = TextSizes.small});

  final String text;
  final Color? textColor;
  final int maxLines;
  final TextAlign? align;
  final TextSizes textSizes;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: textSizes == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: textColor)
          : textSizes == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: textColor)
              : textSizes == TextSizes.large
                  ? Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .apply(color: textColor)
                  : Theme.of(context).textTheme.bodyMedium,
    );
  }
}
