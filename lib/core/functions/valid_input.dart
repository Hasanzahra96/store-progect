import 'package:get/get.dart';

validInput(
  String val,
  int min,
  int max,
  String tayp,
) {
  // التحقق من عدم ترك الحقل فارغاً
  if (val.isEmpty) {
    return "valid1".tr;
  }

  // التحقق من الطول الأدنى
  if (tayp == 'password') {
    if (val.length < min) {
      return "valid2".tr;
    }
  }

  // التحقق من الطول الأقصى
  if (tayp == 'password') {
    if (val.length > max) {
      return "valid3".tr;
    }
  }

  // التحقق من صيغة البريد الإلكتروني فقط
  if (tayp == 'email') {
    if (!GetUtils.isEmail(val)) {
      return "valid4".tr;
    }
  }

  // التحقق من قوة كلمة السر (اختياري)
  if (tayp == 'password') {
    if (!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)').hasMatch(val)) {
      return "valid5".tr;
    }
  }
  ///////// التحقق من كود الخصم

  if (tayp == 'discount') {
    if (val.length > max) {
      return 'الكود غير صالح أو منتهي الصلاحية';
    }
  }
  return null;
}
