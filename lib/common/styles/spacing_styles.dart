import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:flutter/cupertino.dart';

class AppSpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
    top: AppSizes.appBarHeight,
    bottom: AppSizes.bottomNavigationBarHeight,
    left: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
  );
}
