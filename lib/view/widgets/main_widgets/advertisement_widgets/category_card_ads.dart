import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class CategoryCard extends StatelessWidget {
  final ImageProvider image;
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.image,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16.r),
      onTap: onTap,
      child: Container(
        height: 160.h,
        decoration: BoxDecoration(
          color: AppColor.button2Color,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.r, vertical: 12.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF2F4F7),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Icon(
                            icon,
                            size: 18.sp,
                            color: const Color(0xFF42526E),
                          ),
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          size: 16.sp,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    CustomText(
                      data: title,
                      fontsize: 16.sp,
                      fontweight: FontWeight.w700,
                    ),
                    SizedBox(height: 4.h),
                    CustomText(
                      data: subtitle,
                      fontsize: 11.sp,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 1,
              child: Image(
                image: image,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
