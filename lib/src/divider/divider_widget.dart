import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

enum DividerWidgetAxis { horizontal, vertical }

class DividerWidget extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;
  final DividerWidgetAxis axis;
  const DividerWidget({
    Key? key,
    this.height = 1,
    this.width = 1,
    this.color,
    this.axis = DividerWidgetAxis.horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return axis == DividerWidgetAxis.vertical
        ? Container(
            height: height,
            width: width,
            color: color ?? AppColors.gray[200],
          )
        : Container(
            height: height,
            color: color ?? AppColors.gray[200],
          );
  }
}
