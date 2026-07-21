import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/add_photo_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';

class AddPhotoMyaccount extends StatelessWidget {
  final AddPhotoController addPhotoController;

  const AddPhotoMyaccount({super.key, required this.addPhotoController});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final images = addPhotoController.pickedImages;
      return Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipOval(
            child: images.isNotEmpty
                ? Image.file(
                    File(images.first.path),
                    fit: BoxFit.cover,
                    width: 120.w,
                    height: 120.h,
                  )
                : Image.asset(
                    AppImageAssets.logo,
                    fit: BoxFit.cover,
                    width: 120.w,
                    height: 120.h,
                  ),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColor.whiteColor),
            padding: EdgeInsets.all(2.r),
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColor.buttonColor),
              child: IconButton(
                onPressed: () {
                  addPhotoController.pickImagesFromGallery();
                },
                icon: const Icon(Icons.add),
                color: AppColor.whiteColor,
                visualDensity: VisualDensity.compact,
              ),
            ),
          )
        ],
      );
    });
  }
}
