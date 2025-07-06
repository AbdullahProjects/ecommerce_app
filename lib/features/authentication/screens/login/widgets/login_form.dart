import 'package:ecommerce_app/features/authentication/controllers/login/login_controller.dart';
import 'package:ecommerce_app/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/signup_screen.dart';
import 'package:ecommerce_app/navigation_menu.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/constants/app_texts.dart';
import 'package:ecommerce_app/utils/loaders/circular_progress_indicator.dart';
import 'package:ecommerce_app/utils/validators/form/form_validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              controller: controller.email,
              validator: (value) => FormValidator.validateEmail(value),
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: AppTexts.email,
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),

            /// Password
            Obx(
              () => TextFormField(
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                validator: (value) =>
                    FormValidator.validateEmptyText("Password", value),
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                  ),
                  labelText: AppTexts.password,
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields / 2),

            /// Remember me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember me
                Row(
                  children: [
                    Obx(() => Checkbox(
                          value: controller.rememberMe.value,
                          onChanged: (value) => controller.rememberMe.value =
                              !controller.rememberMe.value,
                        )),
                    Text(
                      AppTexts.rememberMe,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),

                /// Forgot Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgotPasswordScreen()),
                  child: Text(
                    AppTexts.forgetPassword,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            /// Sign-in buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.loginWithEmailAndPassword(),
                child: controller.isLoading.value
                    ? CustomCircularProgressIndicator()
                    : Text(AppTexts.signIn),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => SignupScreen());
                },
                child: Text(AppTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
