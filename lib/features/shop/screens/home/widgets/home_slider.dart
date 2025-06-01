import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/common/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/features/shop/controllers/home_controller.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          items:
              banners.map((banner) => RoundedImage(imageUrl: banner)).toList(),
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (int value, _) {
                controller.updateCarouselCurrentIndex(index: value);
              }),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < banners.length; i++)
              Obx(
                () => CircularContainer(
                  width: 20,
                  height: 6,
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? AppColors.primary
                      : AppColors.grey,
                  margin: EdgeInsets.only(right: 10),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
