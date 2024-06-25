import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class HtmlView extends StatelessWidget {
  const HtmlView({
    super.key,
    this.data,
    this.textStyle,
    this.renderMode = RenderMode.column,
  });

  final String? data;
  final TextStyle? textStyle;
  final RenderMode renderMode;

  @override
  Widget build(BuildContext context) {
    return HtmlWidget(
      renderMode: renderMode,
      '''$data''',
      customStylesBuilder: (element) {
        if (element.classes.contains('name')) {
          return {'color': 'red'};
        }
        return null;
      },
      textStyle: textStyle,
    );
  }
}
