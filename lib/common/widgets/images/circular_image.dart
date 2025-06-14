import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage(
      {super.key,
      this.width = 56,
      this.height = 56,
      this.padding = AppSizes.sm,
      this.backgroundColor,
      this.overlayColor,
      required this.image,
      this.isNetworkImage = false});

  final double width, height, padding;
  final String image;
  final bool isNetworkImage;
  final Color? backgroundColor, overlayColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (AppDeviceUtility.isDarkMode(context)
                ? AppColors.black
                : AppColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}
