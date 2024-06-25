import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
    this.width = 32.0,
    this.height = 32.0,
    this.boxWidth = 38.0,
    this.boxHeight = 34.0,
    this.verifiedWidth = 16,
    this.verifiedHeight = 16,
    this.radius = 100,
    this.url,
    this.border,
    this.placeholder,
    this.isVerified = false,
    this.package,
  });

  final double width;
  final double height;
  final double boxWidth;
  final double boxHeight;
  final double verifiedWidth;
  final double verifiedHeight;
  final String? url;
  final double radius;
  final BoxBorder? border;
  final String? placeholder;
  final bool isVerified;
  final String? package;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: width + 4,
      height: height,
      child: Stack(
        children: [
          CommonImageWidget(
            placeholder:
                placeholder ?? 'assets/images/placeholder/placeholder.png',
            image: url ?? '',
            width: width,
            height: height,
            radius: BorderRadius.all(Radius.circular(radius)),
            border: border ?? Border.all(color: AppColors.mBlue),
          ),
          Visibility(
            visible: isVerified,
            child: Positioned(
              top: 2,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: AppRadius.full,
                  color: AppColors.white,
                ),
                child: Image.asset(
                  'assets/images/icons/ic_verified_box.png',
                  width: verifiedWidth,
                  height: verifiedHeight,
                  package: package == null ? 'syn_common_widget' : null,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
