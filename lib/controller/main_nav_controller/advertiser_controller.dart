import 'package:get/get.dart';
import 'package:store/core/functions/auth_bottom_sheet.dart';
import 'package:store/core/functions/show_custom_dialog.dart';
import 'package:store/core/functions/sub_bottom_sheet.dart';
import 'package:store/data/model/vechicle_model/vechicle_item_model.dart';

class AdvertiserController extends GetxController {
  late String user;

  void intialData() {
    user = Get.arguments['user'];
  }

  bool isfolowing = true;
  void toggleFollow() {
    isfolowing = !isfolowing;
    update();
  }

  /////////////////////////     مبدايا بانتظار التعديل
  List<Map<String, String>> getFilteredFeatures(
    VechicleItemModel vechicleItemModel,
  ) {
    List<Map<String, String>> list = [];

    list.add({'label': 'نوع الجير', 'feature': 'اوتو'});
    list.add({'label': 'الممشى', 'feature': "10000"});
    list.add(
        {'label': 'نوع الوقود', 'feature': vechicleItemModel.feuleType ?? ''});

    return list;
  }
  //////////////////////////

  void showDialoge() {
    showCustomDialog(
        title: 'هل أنت متأكد ؟',
        middleText:
            'عند التأكيد سوف يتم إلغاء المتابعة و لن تتمكن من رؤية كل المنشورات للمعلن',
        onTapYes: () {
          toggleFollow();
          Get.back();
        },
        onTapNo: () {
          Get.back();
        });
  }
///////////////////////////////

  void showButtomshet() {
    authBottomSheet(
      onPressed1: () {},
      onPressed2: () {},
    );
  }

  ////////////////////////////
  void showSubButtomshet() {
    subBottomSheet(
      onPressed1: () {},
      onPressed2: () {},
    );
  }

  @override
  void onInit() {
    super.onInit();
    intialData();
  }
}
