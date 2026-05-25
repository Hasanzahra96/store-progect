import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/binding/initial_binding.dart';
import 'package:store/core/class/my_edge.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/core/localization/local_controller.dart';
import 'package:store/core/localization/transilation.dart';
import 'package:store/core/services/service.dart';

import 'package:store/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InitialService();
  MyService();
  MyEdge.setTransparentOverlay();
  runApp(
      // DevicePreview(
      //   enabled: true,
      //   tools: const [
      //     ...DevicePreview.defaultTools,
      //   ],
      //   builder: (context) =>
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());

    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          builder: DevicePreview.appBuilder,
          useInheritedMediaQuery: true,
          theme: ThemeData(
            fontFamily: 'Tajawal',
            colorScheme: ColorScheme.fromSeed(seedColor: AppColor.whiteColor),
            useMaterial3: true,
            scaffoldBackgroundColor: AppColor.whiteColor,
          ),
          locale: controller.language == null
              ? Locale(Get.deviceLocale!.languageCode)
              : Locale(controller.language!),
          translations: Transilation(),
          initialBinding: InitialBinding(),
          getPages: routes,
          initialRoute: AppRouts.chooseLanguageScreen,
        );
      },
    );
  }
}
