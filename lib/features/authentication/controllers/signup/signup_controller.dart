import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/helpers/network_manager.dart';
import 'package:ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:ecommerce_app/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs;
  final privacyPolicyChecked = false.obs;
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  /// -- SIGNUP
  Future<void> signup() async {
    try {
      // Start Loading
      FullScreenLoader.openLoadingDialog(
          'We are processing your information...',
          AppImages.productsIllustration);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form Validations
      if (!signupFormKey.currentState!.validate()) return;

      // Privacy Policy Check
      if (!privacyPolicyChecked.value) {
        AppLoaders.warningSnackBar(
            title: "Accept Privacy Policy",
            message:
                "In order to create your account, please accept our privacy policy and terms of services.");
        return;
      }

      // Register user in the Firebase Authentication & Save user data in Cloud Firestore
      final userCredential = await AuthenticationRepository.instance
          .registerUser(
              email: email.text.trim(), password: password.text.trim());
      // Show authenticated user data in the Firebase Firestore
      // Show Success Message
      // Move to verify email screen
    } catch (e) {
      AppLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    } finally {
      FullScreenLoader.stopLoading();
    }
  }
}
