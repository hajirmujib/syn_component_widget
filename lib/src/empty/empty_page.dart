import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({
    super.key,
    this.title,
    required this.content,
    this.icon,
    this.image,
    this.textButton = 'Ulangi',
    this.onPressed,
    this.backgroundColor,
  });

  final Icon? icon;
  final Image? image;
  final String? title;
  final String content;
  final String textButton;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          icon ??
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  // vertical: 16,
                ),
                child: image ?? const SizedBox(),
              ),
          Visibility(
            visible: title != null,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 16),
              child: Text(
                title ?? '',
                style: AppTypography.smallBold.copyWith(
                  color: AppColors.mGrey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              // "Yuk, cari dan jelajahi berbagai macam topik dan group pilihan",
              content,
              style: AppTypography.smallRegular.copyWith(
                color: AppColors.mGrey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Visibility(
            visible: onPressed != null,
            child: FittedBox(
              child: CommonButton(
                minWidth: 250,
                backgroundColor: AppColors.mBlue,
                borderRadius: AppRadius.full,
                title: textButton,
                colorBorder: AppColors.mBlue,
                // isFill: true,
                onPressed: onPressed,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
