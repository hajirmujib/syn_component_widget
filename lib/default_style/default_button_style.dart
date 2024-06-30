import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class DefaultButtonStyle {
  // Static properties for default values
  static Color defaultBackgroundColorDisable = CommonColors.gray.shade200;
  static Color defaultBackgroundColor = CommonColors.white[500]!;
  static Color defaultForegroundColorDark = CommonColors.gray[700]!;
  static Color defaultForegroundColorLight = CommonColors.white;
  static Color defaultFontColorDisable = CommonColors.gray[200]!;
  static Color defaultColorBorderDisable = CommonColors.gray.shade200;
  static Color defaultColorBorder = CommonColors.gray[200]!;
  static BorderRadius defaultBorderRadius = AppRadius.md;

  // Instance properties
  Color backgroundColorDisable;
  Color backgroundColor;
  Color foregroundColorDark;
  Color foregroundColorLight;
  Color fontColorDisable;
  Color colorBorderDisable;
  Color colorBorder;
  BorderRadius borderRadius;

  DefaultButtonStyle({
    Color? backgroundColorDisable,
    Color? backgroundColor,
    Color? foregroundColorDark,
    Color? foregroundColorLight,
    Color? fontColorDisable,
    Color? colorBorderDisable,
    Color? colorBorder,
    BorderRadius? borderRadius,
  })  : backgroundColorDisable =
            backgroundColorDisable ?? defaultBackgroundColorDisable,
        backgroundColor = backgroundColor ?? defaultBackgroundColor,
        foregroundColorDark = foregroundColorDark ?? defaultForegroundColorDark,
        foregroundColorLight =
            foregroundColorLight ?? defaultForegroundColorLight,
        fontColorDisable = fontColorDisable ?? defaultFontColorDisable,
        colorBorderDisable = colorBorderDisable ?? defaultColorBorderDisable,
        colorBorder = colorBorder ?? defaultColorBorder,
        borderRadius = borderRadius ?? defaultBorderRadius;

  DefaultButtonStyle copyWith({
    Color? backgroundColorDisable,
    Color? backgroundColor,
    Color? foregroundColorDark,
    Color? foregroundColorLight,
    Color? fontColorDisable,
    Color? colorBorderDisable,
    Color? colorBorder,
    BorderRadius? borderRadius,
  }) {
    return DefaultButtonStyle(
      backgroundColorDisable:
          backgroundColorDisable ?? this.backgroundColorDisable,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColorDark: foregroundColorDark ?? this.foregroundColorDark,
      foregroundColorLight: foregroundColorLight ?? this.foregroundColorLight,
      fontColorDisable: fontColorDisable ?? this.fontColorDisable,
      colorBorderDisable: colorBorderDisable ?? this.colorBorderDisable,
      colorBorder: colorBorder ?? this.colorBorder,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
