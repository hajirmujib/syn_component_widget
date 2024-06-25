import 'package:flutter/material.dart';
import 'package:syn_common_widget/default_style/default_style.dart';
import 'package:syn_common_widget/syn_ui.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({
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
    this.position,
    this.imageSrc,
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
  final WidgetPosition? position;
  final String? imageSrc;

  bool get isImage => imageSrc != null && imageSrc!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return OutlinedButtonTheme(
      data: OutlinedButtonThemeData(
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all<Size>(Size(minWidth, 48)),
          foregroundColor: MaterialStateProperty.all<Color>(
            (backgroundColor == null || backgroundColor == CommonColors.white)
                ? color ?? CommonColors.gray[700]!
                : CommonColors.white,
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.disabled)) {
              return DefaultButtonStyle.backgroundColor;
            }
            return backgroundColor ?? CommonColors.white[500]!;
          }),
          // overlayColor: MaterialStateProperty.all<Color>(Colors.red),
          // surfaceTintColor: MaterialStateProperty.all<Color>(Colors.red),
          textStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return AppTypography.normalBold
                    .copyWith(color: CommonColors.gray[200]);
              }
              return (AppTypography.normalBold);
            },
          ),
          side: MaterialStateProperty.resolveWith<BorderSide>((states) {
            if (states.contains(MaterialState.disabled)) {
              return BorderSide(color: CommonColors.gray.shade200);
            }

            return BorderSide(
              color: (backgroundColor == null ||
                      backgroundColor == CommonColors.white)
                  ? colorBorder ?? CommonColors.gray[200]!
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
            Visibility(
              visible: isImage && position == WidgetPosition.left,
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.asset(
                  imageSrc ?? '',
                  width: 24,
                  height: 24,
                ),
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
            Visibility(
              visible: isImage && position == WidgetPosition.right,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Image.asset(
                  imageSrc ?? '',
                  width: 32,
                  height: 32,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
