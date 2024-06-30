import 'package:flutter/material.dart';
import 'package:syn_common_widget/default_style/default_checkbox_style.dart';
import 'package:syn_common_widget/syn_ui.dart';

class CommonCheckboxWidget extends StatelessWidget {
  const CommonCheckboxWidget({
    super.key,
    required this.title,
    required this.onChanged,
    this.value = false,
  });

  final String title;
  final bool value;
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged.call(!value);
      },
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            SizedBox(
              width: DefaultCheckboxStyle.defaultWidth,
              height: DefaultCheckboxStyle.defaultHeight,
              child: Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: DefaultCheckboxStyle.defaultBorderRadius,
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: value,
                onChanged: onChanged,
              ),
            ),
            SizedBox(width: DefaultCheckboxStyle.defaultWidthSpace),
            Text(title, style: AppTypography.smallRegular),
          ],
        ),
      ),
    );
  }
}
