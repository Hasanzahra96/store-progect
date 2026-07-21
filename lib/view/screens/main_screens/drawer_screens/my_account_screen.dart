import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/my_account_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/my_account_widgets/account_type_widget.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/my_account_widgets/add_photo_myaccount.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/list_tile_my_account_widget.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/my_account_widgets/password_edit_widget.dart';

class MyAccountScreen extends GetView<MyAccountController> {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'حسابي',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.r),
            child: Column(children: [
              Center(
                child: AddPhotoMyaccount(
                  addPhotoController: controller.addPhotoController,
                ), ///////////////////////////قسم اضافة الصور
              ),
              SizedBox(
                height: 32.h,
              ),
              ListTileMyAccountWidget(
                title: 'الاسم',
                subTitle: 'محمد أحمد',
              ),
              ListTileMyAccountWidget(
                title: 'البريد الإلكتروني',
                subTitle: 'hshhah@gmail.com',
              ),
              AccountTypeWidget(), //////////////////////////
              ListTileMyAccountWidget(
                title: 'رقم الهاتف',
                subTitle: '963900000000+',
              ),
              ListTileMyAccountWidget(
                title: 'واتساب',
                subTitle: '963900000000+',
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.mode_edit_outline),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              PasswordEidetWidget(), /////////////////////
              SizedBox(
                height: 16.h,
              ),
              CustomButton(
                data: 'حذف الحساب',
                colorB: AppColor.redColor,
                onPressed: () {
                  controller.showDialoge();
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
