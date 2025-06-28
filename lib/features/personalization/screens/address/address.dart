import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/features/personalization/screens/address/add_new_address.dart';
import 'package:ecommerce_app/features/personalization/screens/address/widgets/single_address.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: AppColors.primary,
        child: Icon(Iconsax.add, color: AppColors.white),
      ),
      appBar: CustomAppBar(
        showBackArrow: true,
        title:
            Text("Addresses", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(isSelected: false),
              SingleAddress(isSelected: false),
              SingleAddress(isSelected: true),
              SingleAddress(isSelected: false),
              SingleAddress(isSelected: false),
              SingleAddress(isSelected: false),
              SingleAddress(isSelected: false),
              SingleAddress(isSelected: false),
            ],
          ),
        ),
      ),
    );
  }
}
