import 'package:ecommerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboard_button.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_dots_navigation.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/app_texts.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                title: AppTexts.onBoardingTitle1,
                subTitle: AppTexts.onBoardingSubTitle1,
                image: AppImages.onBoardingImage1,
              ),
              OnBoardingPage(
                title: AppTexts.onBoardingTitle2,
                subTitle: AppTexts.onBoardingSubTitle2,
                image: AppImages.onBoardingImage2,
              ),
              OnBoardingPage(
                title: AppTexts.onBoardingTitle3,
                subTitle: AppTexts.onBoardingSubTitle3,
                image: AppImages.onBoardingImage3,
              ),
            ],
          ),

          // Skip button
          OnboardingSkip(),

          // Dots navigation
          OnBoardingDotsNavigation(),

          // Circular button
          OnBoardingButton(),
        ],
      ),
    );
  }
}
