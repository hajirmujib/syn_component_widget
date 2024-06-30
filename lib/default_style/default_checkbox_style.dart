import 'package:flutter/material.dart';
import 'package:syn_common_widget/themes/typography.dart';

class DefaultCheckboxStyle {
  // Instance properties with default values
  double width;
  double height;
  double widthSpace;
  TextStyle styleTitle;
  BorderRadiusGeometry borderRadius;

  // Constructor with default values
  DefaultCheckboxStyle({
    double? width,
    double? height,
    double? widthSpace,
    TextStyle? styleTitle,
    BorderRadiusGeometry? borderRadius,
  })  : width = width ?? DefaultCheckboxStyle.defaultWidth,
        height = height ?? DefaultCheckboxStyle.defaultHeight,
        widthSpace = widthSpace ?? DefaultCheckboxStyle.defaultWidthSpace,
        styleTitle = styleTitle ?? DefaultCheckboxStyle.defaultStyleTitle,
        borderRadius = borderRadius ?? DefaultCheckboxStyle.defaultBorderRadius;

  // Default values as static properties
  static double defaultWidth = 32;
  static double defaultHeight = 32;
  static double defaultWidthSpace = 8;
  static TextStyle defaultStyleTitle = AppTypography.smallRegular;
  static BorderRadiusGeometry defaultBorderRadius = const BorderRadius.all(
    Radius.circular(5),
  );

  // copyWith method
  DefaultCheckboxStyle copyWith({
    double? width,
    double? height,
    double? widthSpace,
    TextStyle? styleTitle,
    BorderRadiusGeometry? borderRadius,
  }) {
    return DefaultCheckboxStyle(
      width: width ?? this.width,
      height: height ?? this.height,
      widthSpace: widthSpace ?? this.widthSpace,
      styleTitle: styleTitle ?? this.styleTitle,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
