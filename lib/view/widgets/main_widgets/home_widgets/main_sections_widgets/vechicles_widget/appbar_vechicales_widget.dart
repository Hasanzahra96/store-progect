import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/custom_search.dart';
import 'package:store/data/datasource/static/drop_down_list.dart';

import 'package:store/view/widgets/custom_text.dart';

class VechicleAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const VechicleAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //final VechiclesController controller = Get.find();
    return AppBar(
      shape: Border(bottom: BorderSide(color: Colors.black12, width: 1)),
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: CustomText(
        data: 'المركبات',
        fontsize: 18.sp,
        color: AppColor.browneColor,
        fontweight: FontWeight.bold,
      )

      // CustomDropDown(
      //   items: controller.items,
      //   data: 'المركبات',
      //   onChanged: (String? value) {
      //     controller.onChangeAppBar(value);
      //   },
      // ),
      ,
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            color: AppColor.buttonColor,
            size: 24.r,
            Icons.arrow_back_ios_new,
          )),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.filter_list_outlined),
        ),
        IconButton(
          onPressed: () {
            showSearch(context: context, delegate: CustomSearch(allRegons));
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
