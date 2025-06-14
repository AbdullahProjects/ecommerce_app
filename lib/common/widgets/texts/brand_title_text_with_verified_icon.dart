import 'package:ecommerce_app/common/widgets/texts/brand_title_text.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_enums.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitleTextWithVerticalIcon extends StatelessWidget {
  const BrandTitleTextWithVerticalIcon(
      {super.key,
      required this.text,
      this.maxLines = 1,
      this.textAlign = TextAlign.start,
      this.textColor,
      this.iconColor = AppColors.primary,
      this.textSizes = TextSizes.small});

  final String text;
  final int maxLines;
  final TextAlign textAlign;
  final Color? textColor, iconColor;
  final TextSizes textSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: BrandTitleText(
          text: text,
          maxLines: maxLines,
          align: textAlign,
          textColor: textColor,
          textSizes: textSizes,
        )),
        const SizedBox(width: AppSizes.xs),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: AppSizes.iconXs,
        ),
      ],
    );
  }
}
