import 'package:ecommerce_app/features/authentication/models/user_model.dart';
import 'package:ecommerce_app/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  /// Variables

  /// Methods
  Future<void> saveUserRecordWithCredentials(
      UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        // Convert full name to first and last name
        final user = userCredential.user!;
        final nameParts = UserModel.nameParts(user.displayName ?? '');

        // Map Data
        final userData = UserModel(
          id: user.uid,
          firstName: nameParts.first,
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
          email: user.email,
          profilePicture: user.photoURL,
          phoneNumber: user.phoneNumber,
        );
      }
    } catch (e) {
      AppLoaders.warningSnackBar(
          title: "Data not saved",
          message:
              "Something went wrong while saving your information. You can re-save your data in your profile.");
    }
  }
}
