import 'package:flutter/material.dart';
import 'package:syn_common_widget/styles/shadow.dart';
import 'package:syn_common_widget/themes/themes.dart';

class ShadowScreen extends StatelessWidget {
  const ShadowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Shadow Widget'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: CommonColors.gray[200]!,
                    offset: const Offset(0, 0),
                    blurRadius: 0,
                    spreadRadius: 1,
                  )
                ],
              ),
            ),
            const Text('Shadow SM'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
                boxShadow: AppShadow.sm,
              ),
            ),
            const Text('Shadow Base'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
                boxShadow: AppShadow.base,
              ),
            ),
            const Text('Shadow MD'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
                boxShadow: AppShadow.md,
              ),
            ),
            const Text('Shadow LG'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
                boxShadow: AppShadow.lg,
              ),
            ),
            const Text('Shadow XL'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
                boxShadow: AppShadow.xl,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text('Shadow 2XL'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
                boxShadow: AppShadow.xl2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
