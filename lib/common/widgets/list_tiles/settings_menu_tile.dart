import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SettingsMenuTile extends StatelessWidget {
  const SettingsMenuTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon,
      this.trailing,
      required this.onTap});

  final String title, subTitle;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: AppColors.primary,
      ),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
