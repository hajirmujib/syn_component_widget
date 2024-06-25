import 'package:flutter/material.dart';
import 'package:syn_common_widget/src/image/image_widget.dart';

class BannerItemView extends StatelessWidget {
  const BannerItemView({
    super.key,
    required this.urlImage,
    this.radius,
    this.onTapImage,
    this.margin,
  });

  final String urlImage;
  final double? radius;
  final EdgeInsetsGeometry? margin;
  final ValueChanged<String>? onTapImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapImage?.call(urlImage);
      },
      child: Container(
        height: 16 / 9, //16:9
        width: 250,
        margin: margin,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.all(Radius.circular(radius ?? 16)),
        //   color: AppColors.shimmer,
        //   image: DecorationImage(
        //     // image: NetworkImage(
        //     //     'https://foto.kontan.co.id/3w2jQtt4o_BgiPK1b24ygZkKFgw=/smart/2021/10/06/1210758355p.jpg'),
        //     image: NetworkImage(urlImage),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: CommonImageWidget(
          placeholder: 'assets/images/placeholder/placeholder.png',
          image: urlImage,
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          radius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        // child: Center(
        //   child: Icon(
        //     AppIcons.ic_dummy_video,
        //     size: 50,
        //     color: Color(0xAFbce0fd),
        //   ),
        // ),
      ),
    );
  }
}
