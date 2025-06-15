import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_images.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      leading: CircularImage(
          image: AppImages.user, width: 50, height: 50, padding: 0),
      title: Text(
        "Abdullah Khan Kakar",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: AppColors.white),
      ),
      subtitle: Text(
        "abdullah.k.kakar@gmail.com",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: AppColors.white),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.edit,
            color: AppColors.white,
          )),
    );
  }
}
