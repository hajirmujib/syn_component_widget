import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class CommentItemView extends StatelessWidget {
  const CommentItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AvatarWidget(),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Sarah Sechan',
                        style: AppTypography.extraSmallMedium,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(AppIcons.ic_more),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: AppRadius.base,
                    color: AppColors.xssGrey,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  child: Text(
                    '@indybarends Curabitur non lacus a nulla ornare suscipit. Commonmus consequat, odio eget commodo tincidunt, nisi est tempus quam, id malesuada mi sem at nunc libero.',
                    style: AppTypography.extraSmallRegular.copyWith(
                      fontSize: 11,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '31 Jan 2022',
                          style: AppTypography.extraSmallRegular.copyWith(
                            fontSize: 11,
                            color: AppColors.sGrey,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          height: 14,
                          width: 1,
                          color: AppColors.sGrey,
                        ),
                        const SizedBox(width: 4),
                        Row(
                          children: [
                            const Icon(AppIcons.ic_like_fill,
                                color: AppColors.mBlue),
                            const SizedBox(width: 4),
                            Text(
                              '10',
                              style: AppTypography.extraSmallRegular.copyWith(
                                fontSize: 11,
                                color: AppColors.mBlue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Disukai',
                          style: AppTypography.extraSmallRegular.copyWith(
                            fontSize: 11,
                            color: AppColors.mBlue,
                          ),
                        ),
                        const SizedBox(width: 8),
                        CommonButton(
                          title: 'Balas',
                          borderRadius: AppRadius.full,
                          colorBorder: AppColors.mBlue,
                          color: AppColors.mBlue,
                          widgetType: WidgetType.xs,
                          onPressed: () {},
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
