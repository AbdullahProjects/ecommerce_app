import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final dark = AppDeviceUtility.isDarkMode(context);

    return Row(
      children: [
        Flexible(
          child: Divider(
            color: dark ? AppColors.darkGrey : AppColors.grey,
            thickness: 1,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? AppColors.darkGrey : AppColors.grey,
            thickness: 1,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
