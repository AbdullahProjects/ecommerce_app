import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/data/repositories/user/user_repository.dart';
import 'package:ecommerce_app/features/authentication/models/user_model.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/helpers/network_manager.dart';
import 'package:ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:ecommerce_app/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
  Rx<bool> isLoading = false.obs;

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
      isLoading.value = true;

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove loader
        isLoading.value = false;
        return;
      }
      ;

      // Form Validations
      if (!signupFormKey.currentState!.validate()) {
        isLoading.value = false;
        return;
      }

      // Privacy Policy Check
      if (!privacyPolicyChecked.value) {
        AppLoaders.warningSnackBar(
            title: "Accept Privacy Policy",
            message:
                "In order to create your account, please accept our privacy policy and terms of services.");
        isLoading.value = false;
        return;
      }

      // Register user in the Firebase Authentication & Save user data in Cloud Firestore
      final userCredential = await AuthenticationRepository.instance
          .registerUser(
              email: email.text.trim(), password: password.text.trim());

      // Save authenticated user data in the Firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        userName: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Stop Loading
      isLoading.value = false;

      // Show Success Message
      AppLoaders.successSnackBar(
          title: "Congratulations!",
          message: "Your account has been created! verify email to continue.");

      // Move to verify email screen
      Get.to(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      // Stop Loading
      isLoading.value = false;
      AppLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }
}
