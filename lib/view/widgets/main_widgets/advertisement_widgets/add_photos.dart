import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/add_photo_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/dotted_border_widget.dart';

class AddPhotos extends StatelessWidget {
  final AddPhotoController controller;
  final String tag;
  const AddPhotos({super.key, required this.controller, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final images = controller.pickedImages;
      final canAddMore = images.length < 10;
      final totalItems = canAddMore ? images.length + 1 : images.length;
      if (images.isEmpty) {
        return DottedBorderWidget(
            controller:
                controller); ////////////////////// في حالة عدم اضافة صور بعد
      }

      return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: context.isTablet ? 4 : 3,
          crossAxisSpacing: context.width * 0.02,
          mainAxisSpacing: context.height * 0.01,
          childAspectRatio: 1,
        ),
        itemCount: totalItems,
        itemBuilder: (context, index) {
          if (canAddMore && index == images.length) {
            return InkWell(
                onTap: controller.pickImagesFromGallery,
                child: DottedBorder(
                    color: Colors.black26,
                    strokeWidth: 1,
                    dashPattern: const [5, 4],
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(6),
                    stackFit: StackFit.loose,
                    child: Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(),
                            const Icon(
                              Icons.add_a_photo_outlined,
                              color: AppColor.buttonColor,
                            ),
                            const Spacer(),
                            CustomText(
                              data: 'اضافه صور',
                              fontsize: 12.sp,
                              fontweight: FontWeight.w600,
                              color: AppColor.buttonColor,
                            ),
                            SizedBox(height: 8.h),
                            CustomText(
                              data: 'حتى 10 صور',
                              fontsize: 10.sp,
                              color: AppColor.greyColor,
                            ),
                            const Spacer(),
                          ]),
                    )));
          }

          return GetBuilder<AddPhotoController>(
              id: '$index',
              tag: tag,
              builder: (controller) {
                bool isSelected = controller.selectedphoto == index;
                return GestureDetector(
                    onTap: () {
                      controller.onphotoChanged(index);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              width: 1.5,
                              color: isSelected
                                  ? AppColor.browneColor
                                  : Colors.transparent)),
                      child: Stack(children: [
                        Padding(
                          padding: isSelected
                              ? EdgeInsets.all(6.r)
                              : EdgeInsets.zero,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.file(
                                File(images[index].path),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 12.h,
                            right: 12.w,
                            child: CircleAvatar(
                              radius: 15.r,
                              backgroundColor: AppColor.button2Color,
                              child: PopupMenuButton<String>(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.r)),
                                padding: EdgeInsets.zero,
                                icon: Icon(
                                  Icons.more_horiz,
                                  size: 22.r,
                                  color: AppColor.greyColor,
                                ),
                                itemBuilder: (BuildContext context) =>
                                    <PopupMenuItem<String>>[
                                  PopupMenuItem<String>(
                                      value: 'خيار 1',
                                      child: const Text('حذف'),
                                      onTap: () {
                                        controller.removeImage(index);
                                      }),
                                  const PopupMenuItem<String>(
                                      value: 'خيار 2',
                                      child: Text('تعيين كصوره غلاف')),
                                ],
                              ),
                            )),
                      ]),
                    ));
              });
        },
      );
    });
  }
}
