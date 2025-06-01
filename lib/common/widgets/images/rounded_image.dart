import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.isNetworkImage = false,
    this.applyImageRadius = true,
    this.borderRadius = AppSizes.md,
    this.fit = BoxFit.cover,
    this.backgroundColor = AppColors.light,
    this.onPressed,
    this.padding,
    this.border,
  });

  final double? width, height;
  final String imageUrl;
  final bool isNetworkImage;
  final bool applyImageRadius;
  final double? borderRadius;
  final BoxFit? fit;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius ?? 0)
              : BorderRadius.zero,
          child: Image(
            image:
                isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl),
            fit: fit,
          ),
        ),
      ),
    );
  }
}
