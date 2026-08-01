import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/main_adrees_widget.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/bulle_text.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'الشروط و الأحكام'),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.r),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: const AssetImage(AppImageAssets.logo),
                  radius: 70.r,
                ),
              ),
              SizedBox(height: 24.h),
              MainAdreesWidget(
                fontsize: 18.r,
                data: '1. قبول الشروط',
              ),

              const BulletText(
                text:
                    'باستخدام التطبيق أو إنشاء حساب، فإنك توافق على جميع الشروط والأحكام وسياسة الخصوصية',
              ),
              MainAdreesWidget(
                fontsize: 18.r,
                data: '2. إنشاء الحساب',
              ),
              const BulletText(
                text: 'يجب إدخال معلومات صحيحة وحديثة.',
              ),
              const BulletText(
                text:
                    'يتحمل المستخدم مسؤولية الحفاظ على سرية بيانات تسجيل الدخول.',
              ),
              const BulletText(
                text:
                    'يمنع إنشاء أكثر من حساب لنفس المستخدم بهدف مخالفة سياسات التطبيق.',
              ),
              MainAdreesWidget(
                fontsize: 18.r,
                data: '4. السيارات والعقارات',
              ),
              const BulletText(
                text: 'التطبيق منصة لعرض الإعلانات فقط.',
              ),
              const BulletText(
                text: 'لا يضمن التطبيق صحة جميع المعلومات المنشورة.',
              ),
              const BulletText(
                  text:
                      'البائع والمشتري مسؤولية التحقق من البيانات قبل إتمام أي عملية.'),
              MainAdreesWidget(
                fontsize: 18.r,
                data: '5. الاشتراكات والدفع',
              ),
              const BulletText(
                text: 'يتم تفعيل الاشتراك بعد نجاح عملية الدفع.',
              ),
              const BulletText(
                text: 'لا يمكن استرداد قيمة الاشتراك بعد تفعيله.',
              ),
              const BulletText(
                  text:
                      'تنتهي صلاحية الاشتراك بانتهاء مدته، ويمكن للمستخدم تجديده.'),
              const BulletText(
                text: 'قد تختلف وسائل الدفع المتاحة حسب الخدمات المعتمدة.',
              ),
// 6. التواصل بين المستخدمين
              MainAdreesWidget(
                fontsize: 18.r,
                data: '6. التواصل بين المستخدمين',
              ),
              const BulletText(
                text:
                    'يحق للمستخدم التواصل مع المعلنين عبر وسائل التواصل المتاحة داخل التطبيق.',
              ),
              const BulletText(
                text: 'يمنع استخدام التطبيق لإرسال رسائل مزعجة أو غير لائقة.',
              ),

// 7. المحتوى والملكية
              MainAdreesWidget(
                fontsize: 18.r,
                data: '7. المحتوى والملكية',
              ),
              const BulletText(
                text: 'يحتفظ المستخدم بملكية المحتوى الذي يقوم بنشره.',
              ),
              const BulletText(
                text:
                    'يحق للتطبيق استخدام الصور والمعلومات لغرض عرض الإعلان داخل التطبيق فقط.',
              ),

// 8. إيقاف الحساب
              MainAdreesWidget(
                fontsize: 18.r,
                data: '8. إيقاف الحساب',
              ),
              const BulletText(
                text: 'يحق لإدارة التطبيق تعليق أو حذف أي حساب في حال:',
              ),
              const BulletText(
                text: 'مخالفة الشروط والأحكام.',
              ),
              const BulletText(
                text: 'نشر معلومات مضللة.',
              ),
              const BulletText(
                text: 'إساءة استخدام التطبيق.',
              ),
              const BulletText(
                text: 'تكرار المخالفات.',
              ),
              MainAdreesWidget(
                fontsize: 18.r,
                data: '9. المسؤولية',
              ),
              const BulletText(
                text:
                    'لا يتحمل التطبيق مسؤولية أي اتفاق يتم بين البائع والمشتري.',
              ),
              const BulletText(
                text:
                    'لا يتحمل التطبيق مسؤولية أي خسائر ناتجة عن استخدام المنصة.',
              ),

// 10. تعديل الشروط
              MainAdreesWidget(
                fontsize: 18.r,
                data: '10. تعديل الشروط',
              ),
              const BulletText(
                text:
                    'يحق لإدارة التطبيق تعديل هذه الشروط والأحكام في أي وقت، وسيتم إشعار المستخدم عند وجود تعديلات جوهرية.',
              ),

// 11. التواصل معنا
              MainAdreesWidget(
                fontsize: 18.r,
                data: '11. التواصل معنا',
              ),
              const BulletText(
                text:
                    'في حال وجود أي استفسار أو ملاحظة، يمكن التواصل مع فريق الدعم من خلال حساب واتساب داخل التطبيق.',
              ),

              SizedBox(
                height: 24.h,
              ),
              CustomButton(
                data: 'تم',
                onPressed: () {
                  Get.back();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
