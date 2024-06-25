import 'package:flutter/material.dart';
import 'package:syn_common_widget/themes/themes.dart';

class CommonRadio extends StatelessWidget {
  const CommonRadio({
    super.key,
    required this.title,
    required this.value,
    this.onChanged,
  });

  final String title;
  final dynamic value;
  final ValueChanged<dynamic>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          value: value,
          groupValue: 0,
          onChanged: onChanged,
        ),
        Text(
          title,
          style: AppTypography.smallMedium.copyWith(
            color: CommonColors.gray[700],
          ),
        )
      ],
    );
  }
}
