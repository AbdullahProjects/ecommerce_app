import 'package:ecommerce_app/data/services/get_storage/get_storage.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_app/navigation_menu.dart';
import 'package:ecommerce_app/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:ecommerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:ecommerce_app/utils/exceptions/format_exceptions.dart';
import 'package:ecommerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final deviceStorage = GetStorage();

  /// Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenuScreen());
      } else {
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
      // Local Storage
      GetStorageServices.setOnboardingStatus(true, writeIfNull: true);
      GetStorageServices.getOnboardingStatus() != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(() => const OnBoardingScreen());
    }
  }

  /// ---------------------- Email and Password sign-in & sign-up ------------------------

  // Sign in User
  Future<UserCredential> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw AppFormatException();
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again later!';
    }
  }

  // Register User
  Future<UserCredential> registerUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      print("Email: $email, Password: $password");
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw AppFormatException();
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again later!';
    }
  }

  /// ----------------------- Email Verification -------------------------------
  Future<void> sendEmailVerificationLink() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw AppFormatException();
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again later!';
    }
  }

  /// ------------------------- Social Authentication --------------------------
  // Google Sign In
  Future<UserCredential?> signInWithGoogle() async {
    try {
      // Sign out user
      // Trigger the authentication flow
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? auth =
          await userAccount?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        idToken: auth?.idToken,
        accessToken: auth?.accessToken,
      );

      // Once sign-in, returns the user credential
      return await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw AppFormatException();
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again later!';
    }
  }

  /// ------------------------- Logout User ------------------------------------
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw AppFormatException();
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again later!';
    }
  }
}
