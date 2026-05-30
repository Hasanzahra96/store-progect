import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_filter_result_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/custom_search.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/datasource/static/drop_down_list.dart';
import 'package:store/data/datasource/static/prperties_lists/properties_filter_result_list.dart';
import 'package:store/data/datasource/static/prperties_lists/property_filter_lists.dart';
import 'package:store/data/datasource/static/vechicles_lists/vechicles_filter_result_list.dart';
import 'package:store/data/model/state_model.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/filter_widgets/filter_result_widget/filter_result_item.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/filter_widgets/small_drop_down_filter_widget.dart';

class PropertiesFilterResultScreen
    extends GetView<PropertiesFilterResultController> {
  const PropertiesFilterResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          systemNavigationBarContrastEnforced: false,
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarDividerColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        child: Scaffold(
          appBar: const CustomAppBar(
            title: 'نتائج البحث',
            isBack: true,
            isShape: true,
          ),
          body: GetBuilder<PropertiesFilterResultController>(
            builder: (controller) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(12.r),
                        onTap: () {
                          showSearch(
                            context: context,
                            delegate: CustomSearch(allRegons),
                          );
                        },
                        child: Container(
                          height: 48.h,
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          decoration: BoxDecoration(
                            color: AppColor.button2Color,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.search,
                                  color: AppColor.buttonColor, size: 20.sp),
                              SizedBox(width: 8.w),
                              const Expanded(
                                child: CustomText(
                                  data: 'ابحث...',
                                  color: AppColor.buttonColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomText(
                            data: 'النتائج: ',
                          ),
                          CustomText(
                            data: '${vechiclesFilterResultList.length}',
                            color: AppColor.browneColor,
                          ),
                          const Spacer(),
                          const CustomText(
                            data: 'فرز حسب :',
                            color: AppColor.buttonColor,
                          ),
                          SmallDropDownFilterWidget<StateModel>(
                            data: 'الأحدث اولا',
                            color: AppColor.tranColor,
                            width: context.screenWidth / 4,
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 4.h),
                            items: sortByFilterResultList,
                            itemBuilder: (StateModel item) => item.label,
                            value: controller.selectSortFilterResultModel,
                            onChanged: (value) {
                              if (value != null) {
                                controller.sortFilterResultOnChanged(value);
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: propertiesFilterResultList.length,
                      itemBuilder: (context, index) {
                        final item = propertiesFilterResultList[index];
                        return FilterResultItem(
                          list: controller.getFilteredFeatures(item),
                          imagePath: item.image,
                          location: item.location,
                          payState: item.pay,
                          price: item.price,
                          state: item.state,
                          regon: item.location,
                          subTitle: item.subtitle,
                          title: item.title,
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
