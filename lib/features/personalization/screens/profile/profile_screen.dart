import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircularImage(width: 80, height: 80, image: AppImages.user),
                    TextButton(
                      onPressed: () {},
                      child: Text("Change Profile Picture"),
                    ),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: AppSizes.spaceBtwItems / 2),
              Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// Heading Profile Information
              SectionHeading(
                  title: "Profile Information", showActionButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),

              ProfileMenu(
                  title: "Name",
                  value: "Abdullah Khan Kakar",
                  onPressed: () {}),
              ProfileMenu(
                  title: "Username",
                  value: "abdullahkhankakar",
                  onPressed: () {}),

              const SizedBox(height: AppSizes.spaceBtwItems),
              Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// Heading Profile Information
              SectionHeading(
                  title: "Personal Information", showActionButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),

              ProfileMenu(
                  title: "User ID",
                  value: "789909",
                  icon: Iconsax.copy,
                  onPressed: () {}),
              ProfileMenu(
                  title: "E-mail",
                  value: "abdullah.k.kakar@gmail.com",
                  onPressed: () {}),
              ProfileMenu(
                  title: "Phone Number",
                  value: "+92 3295340609",
                  onPressed: () {}),
              ProfileMenu(title: "Gender", value: "Male", onPressed: () {}),
              ProfileMenu(
                  title: "Date of Birth",
                  value: "10 Feb, 2005",
                  onPressed: () {}),
              Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// Close Account Button
              TextButton(
                onPressed: () {},
                child: Text(
                  "Close Account",
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
