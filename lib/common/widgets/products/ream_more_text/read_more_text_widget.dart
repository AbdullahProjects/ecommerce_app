import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ReadMoreTextWidget extends StatelessWidget {
  const ReadMoreTextWidget(
      {super.key,
      required this.text,
      this.trimLines = 4,
      this.showMoreText = " Show more",
      this.showLessText = " Less",
      this.moreLessTextColor});

  final String text;
  final int trimLines;
  final String showMoreText, showLessText;
  final Color? moreLessTextColor;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: trimLines,
      trimMode: TrimMode.Line,
      trimCollapsedText: showMoreText,
      trimExpandedText: showLessText,
      moreStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w800,
          color: moreLessTextColor ?? AppColors.black),
      lessStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w800,
          color: moreLessTextColor ?? AppColors.black),
    );
  }
}
