import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/zoom_gallery_widget.dart';
import 'package:get/get.dart';

class GalleryViewWidget extends StatelessWidget {
  final List<String> images;
  final int activeIndex;
  final CarouselSliderController carouselController;
  final Function(int index) onPageChanged;
  final Function(int index) onThumbnailTap;

  const GalleryViewWidget({
    super.key,
    required this.images,
    required this.activeIndex,
    required this.carouselController,
    required this.onPageChanged,
    required this.onThumbnailTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: CarouselSlider.builder(
            itemCount: images.length,
            carouselController: carouselController,
            itemBuilder: (context, index, realIdx) {
              return GestureDetector(
                onTap: () {
                  Get.to(() => ZoomGalleryWidget(
                        initialIndex: activeIndex,
                        images: images,
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Hero(
                      tag: '${images[index]}_$index',
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              aspectRatio: 16 / 10,
              viewportFraction: 1,
              onPageChanged: (index, reason) => onPageChanged(index),
            ),
          ),
        ),
        SizedBox(height: 12.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(images.length, (index) {
              final isActive = activeIndex == index;
              return GestureDetector(
                onTap: () => onThumbnailTap(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:
                          isActive ? AppColor.browneColor : Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding: isActive
                        ? const EdgeInsets.all(1.0)
                        : const EdgeInsets.all(0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6.r),
                      child: Image.asset(
                        images[index],
                        width: 84.w,
                        height: 54.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        SizedBox(height: 10.h),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: images.length,
          effect: const ScrollingDotsEffect(
            dotHeight: 8,
            dotWidth: 8,
            activeDotColor: AppColor.browneColor,
            dotColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}
