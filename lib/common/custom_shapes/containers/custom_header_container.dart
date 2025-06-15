import 'package:ecommerce_app/common/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/common/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: AppColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: CircularContainer(
                backgroundColor: AppColors.white.withValues(alpha: 0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CircularContainer(
                backgroundColor: AppColors.white.withValues(alpha: 0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
