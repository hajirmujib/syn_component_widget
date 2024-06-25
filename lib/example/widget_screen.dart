import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class WidgetScreen extends StatelessWidget {
  const WidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Widget'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Sample Switch Widget SM'),
            CommonSwitch(
              value: false,
              widgetType: WidgetType.sm,
              activeColor: AppColors.mBlue,
              onChanged: (value) {},
            ),
            CommonSwitch(
              value: true,
              widgetType: WidgetType.sm,
              activeColor: AppColors.mBlue,
              onChanged: (value) {},
            ),
            const Text('Sample Switch Widget MD'),
            CommonSwitch(
              value: false,
              widgetType: WidgetType.md,
              onChanged: (value) {},
            ),
            CommonSwitch(
              value: true,
              widgetType: WidgetType.md,
              onChanged: (value) {},
            ),
            const Text('Sample Switch Widget LG'),
            CommonSwitch(
              value: false,
              widgetType: WidgetType.lg,
              onChanged: (value) {},
            ),
            CommonSwitch(
              value: true,
              widgetType: WidgetType.lg,
              onChanged: (value) {},
            ),
            const Text('Sample Button SM'),
            FittedBox(
              child: CommonButton(
                widgetType: WidgetType.xs,
                title: 'Common Button',
                onPressed: () {},
              ),
            ),
            const Text('Sample Button SM'),
            FittedBox(
              child: CommonButton(
                widgetType: WidgetType.sm,
                title: 'Common Button',
                onPressed: () {},
              ),
            ),
            const Text('Sample Button MD'),
            FittedBox(
              child: CommonButton(
                widgetType: WidgetType.md,
                title: 'Common Button',
                onPressed: () {},
              ),
            ),
            const Text('Sample Button LG'),
            FittedBox(
              child: CommonButton(
                widgetType: WidgetType.lg,
                title: 'Common Button',
                onPressed: () {},
              ),
            ),
            const Text('Sample Button Extra Small Icon'),
            FittedBox(
              child: CommonButton(
                widgetType: WidgetType.xs,
                title: 'Common Button',
                prefixIcon: const Icon(
                  Icons.check,
                  size: 16,
                ),
                suffixIcon: const Icon(
                  Icons.check,
                  size: 16,
                ),
                onPressed: () {},
              ),
            ),
            const Text('Sample Button SM Icon'),
            FittedBox(
              child: CommonButton(
                widgetType: WidgetType.sm,
                title: 'Common Button',
                prefixIcon: const Icon(
                  Icons.check,
                  size: 16,
                ),
                onPressed: () {},
              ),
            ),
            const Text('Sample Button MD Icon'),
            FittedBox(
              child: CommonButton(
                widgetType: WidgetType.md,
                title: 'Common Button',
                suffixIcon: const Icon(
                  Icons.check,
                  size: 16,
                ),
                onPressed: () {},
              ),
            ),
            const Text('Sample Button LG Icon'),
            FittedBox(
              child: CommonButton(
                widgetType: WidgetType.lg,
                title: 'Common Button',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
