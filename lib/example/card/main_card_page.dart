import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class MainCardPage extends StatefulWidget {
  const MainCardPage({super.key});

  @override
  State<MainCardPage> createState() => _MainComponentPageState();
}

class _MainComponentPageState extends State<MainCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Card', style: AppTypography.appBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2.5,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                color: CommonColors.white,
                borderRadius: AppRadius.lg,
                boxShadow: AppShadow.base,
              ),
              child: Column(
                children: [
                  const AvatarWidget(
                    height: 64,
                    width: 64,
                    verifiedHeight: 21,
                    verifiedWidth: 21,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Curabitur quis eros finibus, sodales ligula proin.',
                    style: AppTypography.extraSmallRegular.copyWith(
                      fontSize: 11,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Donec non maximus nulla. Proin pretium, augue a pulvi',
                    style: AppTypography.extraSmallRegular.copyWith(
                      fontSize: 11,
                      color: CommonColors.mGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Wrap(
                        spacing: -20,
                        children: [
                          AvatarWidget(
                            height: 24,
                            width: 24,
                          ),
                          AvatarWidget(
                            height: 24,
                            width: 24,
                          ),
                          AvatarWidget(
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          '120K Pengikut',
                          style: AppTypography.extraSmallRegular.copyWith(
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                    color: CommonColors.white,
                    borderRadius: AppRadius.lg,
                    boxShadow: AppShadow.md,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AspectRatio(
                        aspectRatio: 1,
                        child: CommonImageWidget(
                          image:
                              'https://cf.shopee.co.id/file/3cb6173cc4f758bc43085785cab276df',
                          width: 300,
                          height: 300,
                          radius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'ONE PRIDE MMA OFFICIAL DUFFEL BAG',
                          style: AppTypography.extraSmallBold,
                          textAlign: TextAlign.left,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'All size',
                          style: AppTypography.extraSmallRegular.copyWith(
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'Rp 180.000',
                          style: AppTypography.smallBold.copyWith(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  const Icon(
                                    AppIcons.ic_category,
                                    color: CommonColors.mBlue,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    'Retail buy',
                                    style: AppTypography.extraSmallRegular
                                        .copyWith(
                                      fontSize: 8,
                                      color: CommonColors.mBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Row(
                                children: [
                                  const Icon(
                                    AppIcons.ic_category,
                                    color: CommonColors.mBlue,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    'Group buy',
                                    style: AppTypography.extraSmallRegular
                                        .copyWith(
                                      fontSize: 8,
                                      color: CommonColors.mBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                    color: CommonColors.white,
                    borderRadius: AppRadius.lg,
                    boxShadow: AppShadow.md,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AspectRatio(
                        aspectRatio: 1,
                        child: CommonImageWidget(
                          image:
                              'https://cf.shopee.co.id/file/3cb6173cc4f758bc43085785cab276df',
                          width: 300,
                          height: 300,
                          radius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'ONE PRIDE MMA OFFICIAL DUFFEL BAG',
                          style: AppTypography.extraSmallBold,
                          textAlign: TextAlign.left,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'All size',
                          style: AppTypography.extraSmallRegular.copyWith(
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'Rp 180.000',
                          style: AppTypography.smallBold.copyWith(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  const Icon(
                                    AppIcons.ic_category,
                                    color: CommonColors.mBlue,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    'Retail buy',
                                    style: AppTypography.extraSmallRegular
                                        .copyWith(
                                      fontSize: 8,
                                      color: CommonColors.mBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Row(
                                children: [
                                  const Icon(
                                    AppIcons.ic_category,
                                    color: CommonColors.mBlue,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    'Group buy',
                                    style: AppTypography.extraSmallRegular
                                        .copyWith(
                                      fontSize: 8,
                                      color: CommonColors.mBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
