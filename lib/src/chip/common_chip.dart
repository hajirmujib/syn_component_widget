import 'package:flutter/material.dart';
import 'package:syn_common_widget/themes/colors.dart';
import 'package:syn_common_widget/themes/typography.dart';

class CommonChip extends StatelessWidget {
  const CommonChip({
    super.key,
    required this.label,
    this.backgroundColor,
    this.textColor,
    this.side,
    this.textStyle,
    this.onPressed,
  });

  final Color? backgroundColor;
  final Color? textColor;
  final BorderSide? side;
  final String label;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Chip(
        backgroundColor: backgroundColor ?? Colors.white,
        side: side ?? const BorderSide(color: CommonColors.mBlue),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: const VisualDensity(
          vertical: -4,
        ),
        label: Text(
          label,
          style: textStyle ??
              AppTypography.smallRegular.copyWith(
                color: textColor ?? CommonColors.mBlue,
              ),
        ),
      ),
    );
  }
}
