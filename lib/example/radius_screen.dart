import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class RadiusScreen extends StatelessWidget {
  const RadiusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Radius Widget'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Radius None'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                border: Border.all(color: CommonColors.gray[200]!),
                boxShadow: AppShadow.base,
              ),
            ),
            const Text('Radius SM'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: AppRadius.sm,
                border: Border.all(color: CommonColors.gray[200]!),
                boxShadow: AppShadow.base,
              ),
            ),
            const Text('Radius Base'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: AppRadius.base,
                border: Border.all(color: CommonColors.gray[200]!),
                boxShadow: AppShadow.base,
              ),
            ),
            const Text('Radius MD'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: AppRadius.md,
                border: Border.all(color: CommonColors.gray[200]!),
                boxShadow: AppShadow.base,
              ),
            ),
            const Text('Radius LG'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: AppRadius.lg,
                border: Border.all(color: CommonColors.gray[200]!),
                boxShadow: AppShadow.base,
              ),
            ),
            const Text('Radius XL'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: AppRadius.xl,
                border: Border.all(color: CommonColors.gray[200]!),
                boxShadow: AppShadow.base,
              ),
            ),
            const Text('Radius 2XL'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: AppRadius.xxl,
                border: Border.all(color: CommonColors.gray[200]!),
                boxShadow: AppShadow.base,
              ),
            ),
            const Text('Radius 3XL'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: AppRadius.xxxl,
                border: Border.all(color: CommonColors.gray[200]!),
                boxShadow: AppShadow.base,
              ),
            ),
            const Text('Radius Full'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: AppRadius.full,
                border: Border.all(color: CommonColors.gray[200]!),
                boxShadow: AppShadow.base,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
