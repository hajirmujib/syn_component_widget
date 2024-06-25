import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Avatar Screen'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text('Sample Avatar'),
            AvatarWidget(
              radius: 8,
            ),
            SizedBox(height: 16),
            AvatarWidget(
              radius: 8,
              width: 64,
              height: 64,
            ),
            SizedBox(height: 16),
            AvatarWidget(
              radius: 100,
              width: 64,
              height: 64,
            ),
            SizedBox(height: 16),
            AvatarWidget(
              radius: 100,
              width: 64,
              height: 64,
              isVerified: true,
              package: '',
            ),
          ],
        ),
      ),
    );
  }
}
