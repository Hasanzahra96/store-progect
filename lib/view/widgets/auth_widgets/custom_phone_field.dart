import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:store/core/constant/color.dart';

class CustomPhoneField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String? initialCountryCode;

  final String? Function(PhoneNumber?)? validator;
  final ValueChanged<PhoneNumber>? onChanged;
  final void Function(PhoneNumber?)? onSaved;
  final ValueChanged<Country>? onCountryChanged;
  final TextAlign? textAlign;

  const CustomPhoneField({
    super.key,
    this.controller,
    this.keyboardType = TextInputType.phone,
    this.initialCountryCode,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.onCountryChanged,
    this.textAlign = TextAlign.right,
  });

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Directionality(
        textDirection: isRtl ? TextDirection.ltr : TextDirection.rtl,
        child: IntlPhoneField(
          autofocus: false,
          keyboardType: keyboardType,
          textAlign: isRtl ? TextAlign.end : TextAlign.end,
          controller: controller,
          initialCountryCode: initialCountryCode,
          decoration: const InputDecoration(
            hintText: "9xxxxxxxx",
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor: AppColor.button2Color,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black26,
              ),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          disableLengthCheck: true,
          showCountryFlag: false,
          onChanged: onChanged,
          onCountryChanged: onCountryChanged,
          validator: validator,
          onSaved: onSaved,
        ),
      ),
    );
  }
}
