import 'package:flutter/material.dart';
import 'package:syn_common_widget/example/common_drop_down.dart';
import 'package:syn_common_widget/example/avatar_screen.dart';
import 'package:syn_common_widget/example/card/main_card_page.dart';
import 'package:syn_common_widget/example/community/main_community_page.dart';
import 'package:syn_common_widget/example/form_control_screen.dart';
import 'package:syn_common_widget/example/image_screen.dart';
import 'package:syn_common_widget/example/main_component/main_component_page.dart';
import 'package:syn_common_widget/example/posting/main_posting_page.dart';
import 'package:syn_common_widget/example/radius_screen.dart';
import 'package:syn_common_widget/example/shadow_screen.dart';
import 'package:syn_common_widget/example/widget_screen.dart';
import 'package:syn_common_widget/themes/themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Common UI Demo',
      theme: themeLight(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    AppIcons.fontPackage = '';
    AppTypography.package = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const RadiusScreen()),
                );
              },
              child: const Text('Sample Radius'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ShadowScreen()),
                );
              },
              child: const Text('Sample Shadow'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const WidgetScreen()),
                );
              },
              child: const Text('Sample Widget'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const FormControllerScreen()),
                );
              },
              child: const Text('Sample Form'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => CommonDropDown(
                            focus: focusNode,
                          )),
                );
              },
              child: const Text('Sample Drop Down'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AvatarScreen()),
                );
              },
              child: const Text('Sample Avatar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ImageScreen()),
                );
              },
              child: const Text('Sample Image'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const MainComponentPage()),
                );
              },
              child: const Text('Sample Main Component'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const MainCommunityPage()),
                );
              },
              child: const Text('Sample Main Community'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MainCardPage()),
                );
              },
              child: const Text('Sample Main Card'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const MainPostingPage()),
                );
              },
              child: const Text('Sample Main Posting'),
            ),
          ],
        ),
      ),
    );
  }
}
