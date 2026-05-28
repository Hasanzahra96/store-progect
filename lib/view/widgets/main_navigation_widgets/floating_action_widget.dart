import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/routess.dart';

class FloatingActionWidget extends StatelessWidget {
  const FloatingActionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.whiteColor),
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: AppColor.buttonColor.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 12,
              offset: const Offset(0, 15),
            ),
          ],
        ),
        child: FloatingActionButton(
          shape: const CircleBorder(),
          elevation: 20,
          highlightElevation: 20,
          onPressed: () {
            Get.toNamed(AppRouts.advertisementScreen);
          },
          backgroundColor: AppColor.buttonColor,
          child: const Icon(Icons.add, color: AppColor.whiteColor),
        ));
  }
}
