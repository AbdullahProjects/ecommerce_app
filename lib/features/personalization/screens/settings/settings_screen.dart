import 'package:ecommerce_app/common/custom_shapes/containers/custom_header_container.dart';
import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:ecommerce_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/personalization/screens/address/address.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/profile_screen.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            CustomHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Appbar
                  CustomAppBar(
                    title: Text(
                      "Account",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: AppColors.white),
                    ),
                  ),

                  /// User Profile Card
                  UserProfileTile(
                      onEditPressed: () => Get.to(() => ProfileScreen())),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),

            /// -- Body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account Settings
                  SectionHeading(
                      title: "Account Settings", showActionButton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  SettingsMenuTile(
                      title: "My Addresses",
                      subTitle: "Set shopping delivery address",
                      icon: Iconsax.safe_home,
                      onTap: () {
                        Get.to(() => const AddressScreen());
                      }),
                  SettingsMenuTile(
                      title: "My Cart",
                      subTitle: "Add, remove products and move to checkout",
                      icon: Iconsax.shopping_cart,
                      onTap: () {}),
                  SettingsMenuTile(
                      title: "My Orders",
                      subTitle: "In-progress and Completed Orders",
                      icon: Iconsax.bag_tick,
                      onTap: () {}),
                  SettingsMenuTile(
                      title: "Bank Account",
                      subTitle: "Withdraw balance to registered bank account",
                      icon: Iconsax.bank,
                      onTap: () {}),
                  SettingsMenuTile(
                      title: "My Coupons",
                      subTitle: "List of all the discounted coupons",
                      icon: Iconsax.discount_shape,
                      onTap: () {}),
                  SettingsMenuTile(
                      title: "Notifications",
                      subTitle: "Set any kind of notification message",
                      icon: Iconsax.notification,
                      onTap: () {}),
                  SettingsMenuTile(
                      title: "Account Privacy",
                      subTitle: "Manage data usage and connected accounts",
                      icon: Iconsax.security_card,
                      onTap: () {}),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  /// App Settings
                  SectionHeading(
                      title: "App Settings", showActionButton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  SettingsMenuTile(
                      title: "Load Data",
                      subTitle: "Upload data to your Cloud Firebase",
                      icon: Iconsax.document_upload,
                      onTap: () {}),
                  SettingsMenuTile(
                      title: "Geolocation",
                      subTitle: "Set recommendation based on location",
                      icon: Iconsax.location,
                      trailing: Switch(value: true, onChanged: (value) {}),
                      onTap: () {}),
                  SettingsMenuTile(
                      title: "Safe Mode",
                      subTitle: "Search result is safe for all ages",
                      icon: Iconsax.security_user,
                      trailing: Switch(value: true, onChanged: (value) {}),
                      onTap: () {}),
                  SettingsMenuTile(
                      title: "HD Image Quality",
                      subTitle: "Set image quality to be seen",
                      icon: Iconsax.image,
                      trailing: Switch(value: true, onChanged: (value) {}),
                      onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
