import 'package:flutter/material.dart';

class CustomListGenerateWidget extends StatelessWidget {
  final List list;
  final Widget Function(BuildContext context, int index) itemBuilder;
  const CustomListGenerateWidget(
      {super.key, required this.list, required this.itemBuilder});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(
                list.length, (index) => itemBuilder(context, index))));
  }
}
