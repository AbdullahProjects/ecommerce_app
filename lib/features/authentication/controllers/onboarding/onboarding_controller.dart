import 'package:ecommerce_app/data/services/get_storage/get_storage.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  PageController pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Local Storage
      GetStorageServices.setOnboardingStatus(false, writeIfNull: false);
      // move towards authentication screens
      Get.offAll(() => LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    // Local Storage
    GetStorageServices.setOnboardingStatus(false, writeIfNull: false);
    Get.offAll(() => LoginScreen());
  }
}
