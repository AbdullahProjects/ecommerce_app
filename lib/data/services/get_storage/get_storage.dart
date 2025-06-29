import 'package:get_storage/get_storage.dart';

class GetStorageServices {
  static late GetStorage deviceStorage;

  /// Keys
  static String isFirstTime = "IsFirstTime";

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
}
