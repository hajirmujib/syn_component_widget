import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class MediumButton extends StatelessWidget {
  const MediumButton({
    super.key,
    this.onPressed,
    this.minWidth = 24,
    this.color,
    this.colorBorder,
    required this.title,
    this.prefixIcon,
    this.suffixIcon,
    this.toggle = WidgetToggle.active,
    this.backgroundColor,
    this.borderRadius,
  }) : super();

  final VoidCallback? onPressed;
  final double minWidth;
  final Color? color;
  final Color? colorBorder;
  final String title;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final WidgetToggle toggle;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return OutlinedButtonTheme(
      data: OutlinedButtonThemeData(
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all<Size>(Size(minWidth, 40)),
          foregroundColor: MaterialStateProperty.all<Color>(
            (backgroundColor == null || backgroundColor == CommonColors.white)
                ? color ?? DefaultButtonStyle.foregroundColorDark
                : DefaultButtonStyle.foregroundColorLight,
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.disabled)) {
              return DefaultButtonStyle.backgroundColorDisable;
            }
            return backgroundColor ?? DefaultButtonStyle.backgroundColor;
          }),
          textStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return AppTypography.smallBold
                    .copyWith(color: DefaultButtonStyle.fontColorDisable);
              }
              return (AppTypography.smallBold.copyWith(color: color));
            },
          ),
          side: MaterialStateProperty.resolveWith<BorderSide>((states) {
            if (states.contains(MaterialState.disabled)) {
              return BorderSide(color: DefaultButtonStyle.colorBorderDisable);
            }

            return BorderSide(
              color: (backgroundColor == null ||
                      backgroundColor == CommonColors.white)
                  ? colorBorder ?? DefaultButtonStyle.colorBorder
                  : backgroundColor!,
            );
          }),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: borderRadius ?? AppRadius.md),
          ),
        ),
      ),
      child: OutlinedButton(
        onPressed: toggle == WidgetToggle.active ? onPressed : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: prefixIcon != null,
              child: Container(
                padding: const EdgeInsets.only(right: 8),
                child: prefixIcon,
              ),
            ),
            Text(
              title,
            ),
            Visibility(
              visible: suffixIcon != null,
              child: Container(
                padding: const EdgeInsets.only(left: 8),
                child: suffixIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
