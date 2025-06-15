import 'package:ecommerce_app/common/widgets/authentication/authentication_divider.dart';
import 'package:ecommerce_app/common/widgets/authentication/authentication_social_buttons.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                AppTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Form
              SignupForm(),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Divider
              AuthenticationDivider(text: AppTexts.orSignUpWith.capitalize!),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Footer
              AuthenticationSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
