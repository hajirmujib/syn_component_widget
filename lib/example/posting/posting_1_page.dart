import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

import 'comment_item_view.dart';

class Posting1Page extends StatefulWidget {
  const Posting1Page(
      {super.key, required this.imageLenght, required this.title});

  final int imageLenght;
  final String title;

  @override
  State<Posting1Page> createState() => _MainComponentPageState();
}

class _MainComponentPageState extends State<Posting1Page> {
  int imageLenght = 0;

  @override
  void initState() {
    imageLenght = widget.imageLenght;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: AppTypography.appBarTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const AvatarWidget(
                  isVerified: true,
                  height: 36,
                  width: 36,
                  package: '',
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Community name', style: AppTypography.normalRegular),
                    const SizedBox(height: 3),
                    Text(
                      '31 Januari 2022',
                      style: AppTypography.extraSmallRegular.copyWith(
                        fontSize: 11,
                        color: AppColors.mGrey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: _buildImage(),
            ),
            Text(
              'Nullam rhoncus metus felis, at pulvinar quam tincidunt nec. Curabitur dapibus dictum libero, ut ... mattis mauris. Maecenas ultrices urna id nisl semper, quis pretium lacus tempus. Nulla nec sem ut sapien porta dapibus ac malesuada orci. In hac habitasse platea dictumst. Donec non turpis augue. Integer erat metus, tincidunt id fringilla in, ultricies ac diam. Maecenas pharetra velit ac metus molestie, ac rutrum justo placerat. Quisque varius rhoncus sem ac tincidunt. Fusce vel augue vel elit interdum interdum. Vestibulum efficitur tincidunt odio, a rhoncus risus aliquet ac. Sed varius vulputate maximus. Proin in consectetur erat, a volutpat lectus. Aenean mattis, felis vel molestie faucibus, nibh leo viverra diam, eget dapibus neque velit tempus dolor. Sed sit amet quam viverra, pharetra est sit amet, imperdiet tellus. Praesent lobortis urna quis lectus vulputate, ac rutrum lorem rutrum. Nullam non ante laoreet, auctor est in, aliquet massa. Nunc ut arcu in odio euismod eleifend sit amet a justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum elit vitae tellus mollis, eget elementum magna euismod. Ut ullamcorper ipsum eget erat maximus scelerisque. Maecenas elementum orci massa, nec rutrum arcu pharetra a. Mauris auctor sapien dolor, quis ultrices est lacinia id. Aliquam posuere, tellus a accumsan mattis, purus urna posuere lorem, laoreet tempor massa ligula sit amet felis.',
              style: AppTypography.extraSmallRegular,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            const DividerWidget(),
            const SizedBox(height: 8),
            Row(
              children: [
                Text('Disukai oleh', style: AppTypography.extraSmallRegular),
                const SizedBox(width: 8),
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
                Text(
                  'XXX Orang',
                  style: AppTypography.extraSmallBold.copyWith(
                    color: AppColors.mBlue,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero,
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    log('message');
                  },
                  child: Row(
                    children: [
                      const Icon(AppIcons.ic_like_outline),
                      const SizedBox(width: 8),
                      Text('Suka', style: AppTypography.extraSmallRegular),
                    ],
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero,
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    log('message');
                  },
                  child: Row(
                    children: [
                      const Icon(AppIcons.ic_comment),
                      const SizedBox(width: 8),
                      Text('Komentar', style: AppTypography.extraSmallRegular),
                    ],
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero,
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    log('message');
                  },
                  child: Row(
                    children: [
                      const Icon(AppIcons.ic_share),
                      const SizedBox(width: 8),
                      Text('Bagikan', style: AppTypography.extraSmallRegular),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            //Comment
            const CommentItemView(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    switch (imageLenght) {
      case 1:
        return AspectRatio(
          aspectRatio: 16 / 9,
          child: CommonImageWidget(
            image: '',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
            border: Border.all(color: AppColors.xsGrey),
            radius: AppRadius.lg,
          ),
        );
      case 2:
        return AspectRatio(
          aspectRatio: 16 / 9,
          child: Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: CommonImageWidget(
                    image: '',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                    border: Border.all(color: AppColors.xsGrey),
                    radius: AppRadius.lg,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: CommonImageWidget(
                    image: '',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                    border: Border.all(color: AppColors.xsGrey),
                    radius: AppRadius.lg,
                  ),
                ),
              ),
            ],
          ),
        );
      case 3:
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: CommonImageWidget(
                image: '',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
                border: Border.all(color: AppColors.xsGrey),
                radius: AppRadius.lg,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CommonImageWidget(
                      image: '',
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                      border: Border.all(color: AppColors.xsGrey),
                      radius: AppRadius.lg,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CommonImageWidget(
                      image: '',
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                      border: Border.all(color: AppColors.xsGrey),
                      radius: AppRadius.lg,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      case 4:
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: CommonImageWidget(
                image: '',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
                border: Border.all(color: AppColors.xsGrey),
                radius: AppRadius.lg,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CommonImageWidget(
                      image: '',
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                      border: Border.all(color: AppColors.xsGrey),
                      radius: AppRadius.lg,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CommonImageWidget(
                      image: '',
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                      border: Border.all(color: AppColors.xsGrey),
                      radius: AppRadius.lg,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: AspectRatio(
                      aspectRatio: 1,
                      child: Stack(
                        children: [
                          CommonImageWidget(
                            image: '',
                            width: 300,
                            height: 300,
                            fit: BoxFit.cover,
                            border: Border.all(color: AppColors.xsGrey),
                            radius: AppRadius.lg,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: AppRadius.lg,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '+1',
                              style: AppTypography.heading5.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ],
        );
      default:
        return const SizedBox();
    }
  }
}
