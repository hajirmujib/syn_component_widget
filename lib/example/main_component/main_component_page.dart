import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class MainComponentPage extends StatefulWidget {
  const MainComponentPage({super.key});

  @override
  State<MainComponentPage> createState() => _MainComponentPageState();
}

class _MainComponentPageState extends State<MainComponentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Component', style: AppTypography.appBarTitle),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                leadingWidth: 110,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset(
                    'assets/images/Common3c.png',
                    width: 93.41,
                    height: 22,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      AppIcons.ic_notification,
                      size: 36,
                      color: CommonColors.mGrey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const AvatarWidget(),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                leadingWidth: 110,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset(
                    'assets/images/Common3c.png',
                    width: 93.41,
                    height: 22,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const AvatarWidget(),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                leadingWidth: 110,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset(
                    'assets/images/Common3c.png',
                    width: 93.41,
                    height: 22,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const AvatarWidget(),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                title: Text('Checkout', style: AppTypography.appBarTitle),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(AppIcons.ic_more),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                title: Row(
                  children: [
                    const AvatarWidget(
                      isVerified: true,
                      package: '',
                    ),
                    const SizedBox(width: 8),
                    Text('NFL Fans Indo', style: AppTypography.extraSmallBold),
                  ],
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(AppIcons.ic_more),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(AppIcons.ic_hambuger),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text('Pengikut', style: AppTypography.appBarTitle),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(AppIcons.ic_more),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                title: Text('Menu name', style: AppTypography.appBarTitle),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 8,
                    ),
                    child: CommonButton(
                      title: 'Post',
                      widgetType: WidgetType.sm,
                      borderRadius: AppRadius.full,
                      backgroundColor: CommonColors.mBlue,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
