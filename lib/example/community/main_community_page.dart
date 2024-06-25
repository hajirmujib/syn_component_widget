import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class MainCommunityPage extends StatefulWidget {
  const MainCommunityPage({super.key});

  @override
  State<MainCommunityPage> createState() => _MainComponentPageState();
}

class _MainComponentPageState extends State<MainCommunityPage> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Community', style: AppTypography.appBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Row(
                  children: [
                    const AvatarWidget(
                      isVerified: true,
                      package: '',
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Community name',
                          style: AppTypography.normalRegular,
                        ),
                        Text(
                          '31 Januari 2022',
                          style: AppTypography.extraSmallRegular.copyWith(
                            fontSize: 11,
                            color: AppColors.mGrey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Row(
                  children: [
                    const AvatarWidget(
                      isVerified: true,
                      package: '',
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Community name',
                          style: AppTypography.normalRegular,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AvatarWidget(
                      isVerified: true,
                      height: 58,
                      width: 58,
                      verifiedWidth: 20,
                      verifiedHeight: 20,
                      package: '',
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nunc faucibus dui nec augue mollis, in erat curae.',
                            style: AppTypography.normalRegular,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Wrap(
                                spacing: -20,
                                children: [
                                  AvatarWidget(),
                                  AvatarWidget(),
                                  AvatarWidget(),
                                ],
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'XXK Pengikut',
                                style: AppTypography.extraSmallRegular.copyWith(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: AppRadius.lg,
                  boxShadow: AppShadow.xl,
                  color: AppColors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      child: Text(
                        'DALAM PROSES',
                        style: AppTypography.extraSmallMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const DividerWidget(
                      color: AppColors.mBlue,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nama Komunitas',
                                style: AppTypography.extraSmallRegular.copyWith(
                                  color: AppColors.mGrey,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'NFL Fans Indonesia',
                                style: AppTypography.normalBold,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nama Komunitas',
                                style: AppTypography.extraSmallRegular.copyWith(
                                  color: AppColors.mGrey,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'NFL Fans Indonesia',
                                style: AppTypography.normalBold,
                              ),
                            ],
                          ),
                          const SizedBox(height: 32),
                          CommonButton(
                            title: 'Kelola komunitas',
                            borderRadius: AppRadius.full,
                            backgroundColor: AppColors.mBlue,
                            onPressed: () {
                              log('message');
                            },
                          ),
                          const SizedBox(height: 8),
                          TextButton(
                            style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.zero,
                              ),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            onPressed: () {
                              log('message');
                              setState(() {
                                visible = !visible;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Detail',
                                  style: AppTypography.smallBold.copyWith(
                                    color: AppColors.mGrey,
                                  ),
                                ),
                                Icon(
                                  visible
                                      ? AppIcons.ic_arrow_up
                                      : AppIcons.ic_arrow_down,
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: visible,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 8),
                                const DividerDashWidget(
                                  color: AppColors.mBlue,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Mengenai komunitasmu',
                                  style:
                                      AppTypography.extraSmallRegular.copyWith(
                                    fontSize: 11,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Quisque massa libero, posuere eget interdum et, varius ac velit. Aenean fringilla condimentum neque id consequat. Ut ac erat non justo consectetur ac.',
                                  style: AppTypography.extraSmallBold,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Lokasi komunitas',
                                  style:
                                      AppTypography.extraSmallRegular.copyWith(
                                    fontSize: 11,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Jakarta, Indonesia',
                                  style: AppTypography.extraSmallBold,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Jumlah anggota',
                                  style:
                                      AppTypography.extraSmallRegular.copyWith(
                                    fontSize: 11,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '100',
                                  style: AppTypography.extraSmallBold,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Nomor Handphone Perwakilan',
                                  style:
                                      AppTypography.extraSmallRegular.copyWith(
                                    fontSize: 11,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '0898 7654 3210',
                                  style: AppTypography.extraSmallBold,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
