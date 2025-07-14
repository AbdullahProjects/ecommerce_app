import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/data/repositories/user/user_repository.dart';
import 'package:ecommerce_app/data/services/get_storage/get_storage.dart';
import 'package:ecommerce_app/features/personalization/controllers/user_controller.dart';
import 'package:ecommerce_app/utils/helpers/network_manager.dart';
import 'package:ecommerce_app/utils/popups/loaders.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  /// Variables
  final isLoading = false.obs;
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    email.text = GetStorageServices.getRememberedEmail() ?? "";
    password.text = GetStorageServices.getRememberedPassword() ?? "";
    super.onInit();
  }

  /// Email and Password SignIn
  Future<void> loginWithEmailAndPassword() async {
    try {
      // Start Loading
      isLoading.value = true;

      // Check Internet Connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        isLoading.value = false;
        return;
      }

      // Form Validation
      if (!loginFormKey.currentState!.validate()) {
        isLoading.value = false;
        return;
      }

      // Save Email and Password if remember me is checked
      if (rememberMe.value) {
        GetStorageServices.setEmailAndPassword(
            email.text.trim(), password.text.trim());
      }

      // Authenticating User
      final userCredential = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(
              email: email.text.trim(), password: password.text.trim());

      // Stop Loading
      isLoading.value = false;

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      isLoading.value = false;
      AppLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }

  /// Google SignIn Authentication
  Future<void> googleSignInMethod() async {
    try {
      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        AppLoaders.customToast(message: "No Internet Connection");
        return;
      }

      // Google authentication
      final userCredential =
          await AuthenticationRepository.instance.signInWithGoogle();

      // Save user recode in Firestore
      await UserController.instance
          .saveUserRecordWithCredentials(userCredential);
    } catch (e) {
      AppLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }
}
