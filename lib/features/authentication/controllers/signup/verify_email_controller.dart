import 'dart:async';
import 'package:ecommerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/navigation_menu.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_texts.dart';
import 'package:ecommerce_app/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void onInit() {
    sendVerificationEmailLink();
    super.onInit();
  }

  /// Send email verification link
  sendVerificationEmailLink() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerificationLink();
      AppLoaders.successSnackBar(
          title: "Email sent",
          message: "Please check your inbox and verify your email");
    } catch (e) {
      AppLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }

  /// Set timer to get to know email is verified or not
  setTimerForAutoDirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(
          () => SuccessScreen(
              title: AppTexts.yourAccountCreatedTitle,
              subTitle: AppTexts.yourAccountCreatedSubTitle,
              image: AppImages.staticSuccessIllustration,
              onPressed: () => Get.offAll(() => const NavigationMenuScreen())),
        );
      }
    });
  }

  /// Static function to check email is verified
  checkEmailVerificationStatus() async {
    await FirebaseAuth.instance.currentUser?.reload();
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(
        () => SuccessScreen(
            title: AppTexts.yourAccountCreatedTitle,
            subTitle: AppTexts.yourAccountCreatedSubTitle,
            image: AppImages.staticSuccessIllustration,
            onPressed: () => Get.offAll(() => const NavigationMenuScreen())),
      );
    } else {
      AppLoaders.warningSnackBar(
          title: "Oh Snap!",
          message: "Your email is not verified. Please verify email first.");
    }
  }
}
