import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/properties_advertisement_controller.dart';
import 'package:store/data/datasource/static/drop_down_list.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/drop_down_widget.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/text_form_field_widget.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/tow_column_widget.dart';

class PropertyLocationSection extends StatelessWidget {
  const PropertyLocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertiesAdvertisementController>(
      id: 'location',
      builder: (controller) {
        return TowColumnWidget(
          firstData: 'المدينة',
          secondData: 'الحي',
          firstWidget: DropDownWidget(
            data: 'اختر المدينه',
            items: allRegons, /////
            onChanged: (value) {
              controller.regonOnChanged(value!);
            },
            value: controller.selectregonDropDown,
          ),
          secondWidget: TextFormFieldWidget(
            hintText: 'مثال : شارع المكاتب',
            controller: controller.locationController,
          ),
        );
      },
    );
  }
}
