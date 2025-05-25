import 'package:ecommerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotsNavigation extends StatelessWidget {
  const OnBoardingDotsNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: AppDeviceUtility.getBottomNavigationBarHeight() + 30,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: AppDeviceUtility.isDarkMode(context) == true
              ? AppColors.light
              : AppColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
