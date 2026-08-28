import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/add_photo_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';

class AddPhotoSuggestOffice extends StatelessWidget {
  final AddPhotoController addPhotoController;

  const AddPhotoSuggestOffice({super.key, required this.addPhotoController});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final images = addPhotoController.pickedImages;
      if (images.isEmpty) {
        return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColor.checkBoxColor),
            padding: EdgeInsets.all(12.r),
            width: double.infinity,
            height: 250.h,
            child: IconButton(
                onPressed: () {
                  addPhotoController.pickImagesFromGallery();
                },
                icon: Icon(
                  Icons.add_photo_alternate_outlined,
                  size: 50.r,
                )));
      }
      return images.isNotEmpty
          ? AspectRatio(
              aspectRatio: 3 / 2,
              child: Image.file(
                File(images.first.path),
                height: 250.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            )
          : Image.asset(
              AppImageAssets.logo,
              fit: BoxFit.cover,
            );
    });
  }
}
