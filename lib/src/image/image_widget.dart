import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CommonImageWidget extends StatelessWidget {
  final String? placeholder;
  final String image;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius radius;
  final BoxBorder? border;
  const CommonImageWidget({
    Key? key,
    this.placeholder,
    required this.image,
    required this.width,
    required this.height,
    this.radius = BorderRadius.zero,
    this.fit = BoxFit.fill,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
          borderRadius: radius,
          // border: Border.all(color: Colors.red, width: 2),
          border: border,
        ),
      ),
      placeholder: (context, url) => ClipRRect(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: radius,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: radius,
            border: border,
          ),
          child: Image.asset(
            placeholder ?? 'assets/images/placeholder/placeholder.png',
            fit: fit,
            width: width,
            height: height,
          ),
        ),
      ),
      errorWidget: (context, url, error) => ClipRRect(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: radius,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: radius,
            border: border,
          ),
          child: Image.asset(
            placeholder ?? 'assets/images/placeholder/placeholder.png',
            fit: fit,
            width: width,
            height: height,
          ),
        ),
      ),
    );
  }
}
