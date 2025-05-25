import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:ecommerce_app/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: AppTexts.email,
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: AppTexts.password,
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
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    Text(
                      AppTexts.rememberMe,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),

                /// Forgot Password
                TextButton(
                  onPressed: () {},
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
                onPressed: () {},
                child: Text(AppTexts.signIn),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(AppTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
