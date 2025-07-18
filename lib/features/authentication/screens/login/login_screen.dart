import 'package:flutter/material.dart';
import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/common/widgets/authentication/authentication_divider.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce_app/common/widgets/authentication/authentication_social_buttons.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/constants/app_texts.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: AppSpacingStyles.paddingWithAppbarHeight,
            child: Column(
              children: [
                /// Logo, Title, SubTitle
                LoginHeader(),

                /// Form
                LoginForm(),

                /// Divider
                AuthenticationDivider(text: AppTexts.orSignInWith.capitalize!),
                const SizedBox(height: AppSizes.spaceBtwSections),

                /// Footer
                AuthenticationSocialButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
