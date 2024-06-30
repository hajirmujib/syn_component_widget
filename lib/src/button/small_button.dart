import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
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
    this.position,
    this.borderRadius,
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
  final WidgetPosition? position;
  final BorderRadiusGeometry? borderRadius;
  final String? imageSrc;

  bool get isImage => imageSrc != null && imageSrc!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    DefaultButtonStyle defaultButtonStyle = DefaultButtonStyle();

    return OutlinedButtonTheme(
      data: OutlinedButtonThemeData(
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all<Size>(Size(minWidth, 32)),
           foregroundColor: MaterialStateProperty.all<Color>(
            (backgroundColor == null || backgroundColor == CommonColors.white)
                ? color ?? defaultButtonStyle.foregroundColorDark
                : defaultButtonStyle.foregroundColorLight,
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.disabled)) {
              return defaultButtonStyle.backgroundColorDisable;
            }
            return backgroundColor ?? defaultButtonStyle.backgroundColor;
          }),
          textStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return AppTypography.smallBold
                    .copyWith(color: defaultButtonStyle.fontColorDisable);
              }
              return (AppTypography.smallBold.copyWith(color: color));
            },
          ),
          side: MaterialStateProperty.resolveWith<BorderSide>((states) {
         if (states.contains(MaterialState.disabled)) {
              return BorderSide(color: defaultButtonStyle.colorBorderDisable);
            }

            return BorderSide(
              color: (backgroundColor == null ||
                      backgroundColor == CommonColors.white)
                   ? colorBorder ?? defaultButtonStyle.colorBorder
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
