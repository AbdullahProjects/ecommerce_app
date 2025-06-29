import 'package:ecommerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtility.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: OnboardingController.instance.skipPage,
        child: Text(
          "Skip",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
