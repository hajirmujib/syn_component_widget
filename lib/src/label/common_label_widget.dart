import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class CommonLabelWidget extends StatelessWidget {
  const CommonLabelWidget({
    super.key,
    required this.text,
    this.backgroundColor,
    this.textColor,
  });

  final Color? backgroundColor;
  final Color? textColor;
  final String text;

  Color _backgroundColor() {
    if (backgroundColor != null) {
      return backgroundColor!;
    }

    switch (text.toLowerCase()) {
      case 'hadir':
        return AppColors.green[100]!;
      case 'izin':
        return AppColors.blue[100]!;
      default:
        return Colors.transparent;
    }
  }

  Color _textColor() {
    if (textColor != null) {
      return textColor!;
    }

    switch (text.toLowerCase()) {
      case 'hadir':
        return AppColors.green[600]!;
      case 'izin':
        return AppColors.blue[600]!;
      default:
        return AppColors.black[500]!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: AppRadius.sm,
        color: _backgroundColor(),
      ),
      child: Text(
        text,
        style: AppTypography.extraSmallRegular.copyWith(
          color: _textColor(),
          fontStyle:
              (text.toLowerCase() == 'libur' || text.toLowerCase() == 'sakit')
                  ? FontStyle.italic
                  : null,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
