import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final isDark = AppDeviceUtility.isDarkMode(context);

    return Material(
      color: isDark ? AppColors.black : AppColors.white,
      child: TabBar(
        isScrollable: true,
        padding: EdgeInsets.zero,
        indicatorColor: AppColors.primary,
        labelColor: isDark ? AppColors.white : AppColors.primary,
        unselectedLabelColor: AppColors.darkGrey,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDeviceUtility.getAppBarHeight());
}
