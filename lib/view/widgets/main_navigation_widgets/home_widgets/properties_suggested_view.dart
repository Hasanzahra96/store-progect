import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/datasource/static/prperties_lists/sugestet_properties_list.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/properties_suggested_widget.dart';

class PropertiesSuggestedView extends StatelessWidget {
  const PropertiesSuggestedView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight < 650 ? 250 : 250.h,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 100.h,
              color: AppColor.browneColor,
              width: double.infinity,
            ),
          ),
          ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: suggestedPropertiesList.length,
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: PropertiesSuggestedWidget(
                      propertyItemModel: suggestedPropertiesList[index]),
                );
              }),
        ],
      ),
    );
  }
}
