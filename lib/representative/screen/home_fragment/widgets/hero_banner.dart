import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tailor_project/utils/assets.gen.dart';
import 'package:tailor_project/utils/colors.dart';

class HeroBanner extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HeroBanner({super.key, required this.scaffoldKey});

  @override
  State<HeroBanner> createState() => _HeroBannerState();
}

class _HeroBannerState extends State<HeroBanner> {
  int _activeIndex = 0;

  final List<String> bannerImages = [
    Assets.images.heroBanner.path,
    Assets.images.heroBanner.path,
    Assets.images.heroBanner.path,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: bannerImages.length,
          options: CarouselOptions(
            height: 365,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            onPageChanged: (index, reason) {
              setState(() => _activeIndex = index);
            },
          ),
          itemBuilder: (context, index, realIndex) {
            final imagePath = bannerImages[index];
            return Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
            );
          },
        ),
        Positioned(
          left: 25,
          bottom: 40,
          child: AnimatedSmoothIndicator(
            activeIndex: _activeIndex,
            count: bannerImages.length,
            effect: const ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: white,
              dotColor: Colors.white54,
            ),
          ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        widget.scaffoldKey.currentState?.openDrawer();
                      },
                      child: Assets.icons.profileIcon.image(width: 28, height: 28),
                    ),
                    const Spacer(),
                    Assets.icons.cartIcon.image(width: 28, height: 28),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(left: 285, top: 290, right: 20),
            child: OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: button,
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27),
                ),
              ),
              child: const Text(
                'Show All',
                style: TextStyle(
                  color: white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
