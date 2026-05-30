import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';

import 'package:store/data/datasource/static/vechicles_lists/suggested_vehicles_list.dart';

import 'package:store/view/widgets/main_widgets/home_widgets/vechicles_suggested_widget.dart';

class VehiclesSuggestedView extends StatelessWidget {
  const VehiclesSuggestedView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight < 650 ? 250 : 250.h,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 100.h,
              width: double.infinity,
              color: AppColor.browneColor,
            ),
          ),
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: suggestedvehiclesList.length,
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: VechiclesSuggestedWidget(
                    vechicleItemModel: suggestedvehiclesList[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
