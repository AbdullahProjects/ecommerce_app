import 'package:get_storage/get_storage.dart';

class GetStorageServices {
  static late GetStorage deviceStorage;

  /// Keys
  static String isFirstTime = "IsFirstTime";
  static String rememberMeEmail = "RememberMeEmail";
  static String rememberMePassword = "RememberMePassword";

  /// Get Storage
  static initialize() async {
    deviceStorage = GetStorage();
  }

  /// Store Onboarding Screen Status
  static bool getOnboardingStatus() {
    return deviceStorage.read(isFirstTime);
  }

  static void setOnboardingStatus(bool value, {bool? writeIfNull}) {
    if (writeIfNull == true) {
      deviceStorage.writeIfNull(isFirstTime, value);
    } else {
      deviceStorage.write(isFirstTime, value);
    }
  }

  /// Remember Me Email and Password
  static setEmailAndPassword(String email, String password) {
    deviceStorage.write(rememberMeEmail, email);
    deviceStorage.write(rememberMePassword, password);
  }

  static String getRememberedEmail() {
    return deviceStorage.read(rememberMeEmail);
  }

  static String getRememberedPassword() {
    return deviceStorage.read(rememberMePassword);
  }
}
