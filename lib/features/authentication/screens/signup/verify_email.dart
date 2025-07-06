import 'package:ecommerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/features/authentication/controllers/signup/verify_email_controller.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/constants/app_texts.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => AuthenticationRepository.instance.logout(),
              icon: Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            AppSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Image
              Image(
                width: AppDeviceUtility.getScreenWidth(context) * 0.5,
                image: AssetImage(AppImages.verifyIllustration),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Title & Sub-Title
              Text(
                AppTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                email ?? '',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                AppTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.checkEmailVerificationStatus(),
                  child: Text(AppTexts.continueText),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              TextButton(
                onPressed: () => controller.sendVerificationEmailLink(),
                child: Text(
                  AppTexts.resendEmail,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
