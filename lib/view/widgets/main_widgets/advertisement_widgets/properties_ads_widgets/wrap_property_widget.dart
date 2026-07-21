import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WrapPropertyWidget extends StatelessWidget {
  final List list;
  final Widget Function(BuildContext context, int index) itemBuilder;
  const WrapPropertyWidget({
    super.key,
    required this.list,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.w,
      runSpacing: 1.h,
      children: List.generate(
        list.length,
        (index) => itemBuilder(context, index),
      ),
    );
  }
}
