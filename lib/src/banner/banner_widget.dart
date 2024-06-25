import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

enum BannerType { with_margin, full }

class BannerWidget extends StatefulWidget {
  const BannerWidget({
    super.key,
    required this.bannerItems,
    this.margin = const EdgeInsets.only(left: 16, right: 8),
    this.visibleCounter = false,
    this.radius,
    this.onTapImage,
    this.bannerType = BannerType.with_margin,
  });

  final List<BannerItemView> bannerItems;
  final EdgeInsetsGeometry? margin;
  final bool visibleCounter;
  final double? radius;
  final BannerType? bannerType;
  final ValueChanged<String>? onTapImage;

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final PageController _controller = PageController();

  int currentPage = 0;
  bool lastPage = false;

  final List<BannerItemView> adBanners = [];

  @override
  void initState() {
    super.initState();
    adBanners.addAll(widget.bannerItems);
  }

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == adBanners.length - 1) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: widget.margin,
      child: Stack(
        children: [
          SizedBox(
            height: 250,
            child: PageView(
              allowImplicitScrolling: true,
              onPageChanged: _onPageChanged,
              controller: _controller,
              children: adBanners, //is widget
            ),
          ),
          Positioned(
            bottom: 24,
            left: 32,
            child: Visibility(
              visible: widget.visibleCounter,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Colors.white,
                ),
                child: Text(
                  '${currentPage + 1}/${adBanners.length}',
                  style: AppTypography.smallRegular,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: DotsIndicator(
                dotsCount: adBanners.length,
                position: currentPage.toDouble(),
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeColor: CommonColors.gray,
                  color: const Color(0xFFD8D8D8),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
