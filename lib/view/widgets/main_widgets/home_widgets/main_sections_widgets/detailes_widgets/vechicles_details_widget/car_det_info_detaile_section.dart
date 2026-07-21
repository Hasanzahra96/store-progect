import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_details_controller.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/detailes_widgets/info_widget.dart';

class CarDetInfoDetaileSection extends GetView<VechiclesDetailsController> {
  const CarDetInfoDetaileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoWidget(
              firstIcon: Icons.settings_outlined,
              firstTitel: 'نوع الغير',
              firstSubTitel: 'اوتوماتيك',
            ),
            SizedBox(height: 24.h),
            InfoWidget(
              firstIcon: Icons.local_gas_station_outlined,
              firstTitel: 'نوع الوقد',
              firstSubTitel: controller.vechicleItemModel.feuleType ?? '',
            ),
            SizedBox(height: 24.h),
            InfoWidget(
              firstIcon: Icons.event_seat_outlined,
              firstTitel: 'نوع المقاعد',
              firstSubTitel: 'جلد',
            ),
            SizedBox(height: 24.h),
            InfoWidget(
              firstIcon: Icons.palette_outlined,
              firstTitel: 'اللون',
              firstSubTitel: 'خارجي : أسود ، داخلي : أسود',
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoWidget(
              firstIcon: Icons.speed,
              firstTitel: 'نوع العداد',
              firstSubTitel: 'ديجيتال',
            ),
            SizedBox(height: 24.h),
            InfoWidget(
              firstIcon: Icons.speed_outlined,
              firstTitel: 'الممشى',
              firstSubTitel: '1000 كم',
            ),
            SizedBox(height: 24.h),
            InfoWidget(
              firstIcon: Icons.settings_suggest_outlined,
              firstTitel: 'سعه المحرك',
              firstSubTitel: '3000',
            ),
            SizedBox(height: 24.h),
            InfoWidget(
              firstIcon: Icons.door_sliding_outlined,
              firstTitel: 'عدد الابواب',
              firstSubTitel: '4',
            ),
          ],
        ),
      ],
    );
  }
}
