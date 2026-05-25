import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/vechicles_advertisement_controller.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/text_form_field_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/tow_column_widget.dart';

class CarInteriorSection extends StatelessWidget {
  CarInteriorSection({
    super.key,
  });
  final VechiclesAdvertisementController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return TowColumnWidget(
      firstData: 'اللون الداخلي',
      secondData: 'نوع المقاعد',
      firstWidget: TextFormFieldWidget(
        controller: controller.intColorController,
        hintText: 'مثال : ابيض ',
      ),
      secondWidget: TextFormFieldWidget(
        controller: controller.deskTybeController,
        hintText: 'مثال : جلد..مخمل  ',
      ),
    );
  }
}
