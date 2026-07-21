import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:persistent_header_adaptive/persistent_header_adaptive.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/data/datasource/static/drop_down_list.dart';
import 'package:store/data/datasource/static/vechicles_lists/all_state_car_lists.dart';
import 'package:store/view/widgets/custom_anm_swit.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_check_box.dart';
import 'package:store/view/widgets/custom_drop_down.dart';
import 'package:store/view/widgets/custom_price_rang.dart';
import 'package:store/view/widgets/custom_range_slider.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/filter_button_widget.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/custom_list_generate_widget.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/vechicles_widget/vechicle_item_widget.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/vechicles_widget/car_brand_view.dart';

class VechiclesScreen extends GetView<VechiclesController> {
  const VechiclesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'المركبات',
        fontSize: 20.sp,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(AppRouts.vechiclesFilterScreen);
            },
            icon: const Icon(Icons.filter_list_outlined),
          ),
        ],
      ),
      body: GetBuilder<VechiclesController>(
        builder: (controller) {
          return CustomScrollView(
            slivers: [
              AdaptiveHeightSliverPersistentHeader(
                  needRepaint: true,
                  floating: true,
                  initialHeight: 450.h,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColor.whiteColor,
                      border: BorderDirectional(
                          bottom: BorderSide(color: Colors.black12)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CarBrandView(), //////// صف ماركت السياره
                          CustomAnmSwit(
                            child: controller.carModelsList.isEmpty
                                ? const SizedBox.shrink(
                                    key: ValueKey(1),
                                  )
                                : CustomListGenerateWidget(
                                    key: const ValueKey(2),
                                    list: controller.carModelsList,
                                    itemBuilder: (context, index) {
                                      return FilterButtonWidget(
                                        index: index,
                                        data: controller.carModelsList[index],
                                        selectIndex: controller.carModelIndex,
                                        onPressed: () {
                                          controller.carModelOnChanged(index);
                                        },
                                      );
                                    },
                                  ),
                          ), ///////صف موديل السياره
                          CustomListGenerateWidget(
                            list: stateCarList,
                            itemBuilder: (context, index) {
                              return FilterButtonWidget(
                                ////////صف الازرار الثاني
                                index: index,
                                data: stateCarList[index].label,
                                selectIndex: controller.stateCarIndex,
                                onPressed: () {
                                  controller.stateCarOnChanged(index);
                                },
                              );
                            },
                          ),

                          CustomListGenerateWidget(
                            list: taypCarList,
                            itemBuilder: (context, index) {
                              return FilterButtonWidget(
                                ///////صف الازرار الثالث
                                index: index,
                                data: taypCarList[index].label,
                                selectIndex: controller.taypCarIndex,
                                onPressed: () {
                                  controller.taypCarOnChanged(index);
                                },
                              );
                            },
                          ),

                          Padding(
                            padding: EdgeInsets.all(8.0.r),
                            child: Row(
                              children: [
                                CustomCheckBox(
                                  value: controller.isCheck,
                                  onChanged: (value) {
                                    controller.checkBoxChanged(value);
                                  },
                                ),
                                CustomText(
                                  data: 'حدد السعر يدويا',
                                  fontsize: 14.sp,
                                  color: AppColor.buttonColor,
                                ),
                              ],
                            ),
                          ),
                          CustomAnmSwit(
                            child: controller.isCheck
                                ? Column(
                                    key: const ValueKey(11),
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.w),
                                        child: CustomPriceRange(
                                            startValue: controller.startValue,
                                            endValue: controller.endValue),
                                      ),
                                      CustomRangeSlider(
                                        startValue: controller.startValue,
                                        endValue: controller.endValue,
                                        onChanged: (RangeValues values) {
                                          controller.onRangeChanged(values);
                                        },
                                      ),
                                    ],
                                  )
                                : const SizedBox.shrink(
                                    key: ValueKey(22),
                                  ),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: CustomDropDown(
                                height: 35.h,
                                color: AppColor.button2Color,
                                fontsize: 12.sp,
                                fontcolor: AppColor.buttonColor,
                                onChanged: (String? value) {
                                  controller.regonOnChanged(value!);
                                },
                                value: controller.selectDropDown,
                                data: 'كل المناطق',
                                items: allRegons),
                          )
                        ],
                      ),
                    ),
                  )),
              SliverPadding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.paddingOf(context).bottom),
                sliver: SliverList.builder(
                  itemCount: controller.filteredVehicles.length,
                  itemBuilder: (context, index) {
                    return VechicleItemWidget(
                      key: ValueKey(controller.filteredVehicles[index].id),
                      vechicleItemModel: controller.filteredVehicles[index],
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
