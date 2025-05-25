import 'package:ecommerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: AppSizes.defaultSpace,
      bottom: AppDeviceUtility.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: OnboardingController.instance.nextPage,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppDeviceUtility.isDarkMode(context) == true
              ? AppColors.primary
              : AppColors.black,
          shape: CircleBorder(),
        ),
        child: Icon(
          Icons.arrow_forward_ios,
          color: AppColors.white,
        ),
      ),
    );
  }
}
