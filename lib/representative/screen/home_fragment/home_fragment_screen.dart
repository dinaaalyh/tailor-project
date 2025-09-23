import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tailor_project/representative/models/home_products_model.dart';
import 'package:tailor_project/representative/screen/designer_collection.dart';
import 'package:tailor_project/representative/screen/top_trends.dart';
import 'package:tailor_project/utils/assets.gen.dart';
import 'package:tailor_project/utils/colors.dart';

class HomeFragmentScreen extends StatefulWidget {
  const HomeFragmentScreen({super.key});

  @override
  State<HomeFragmentScreen> createState() => _HomeFragmentScreenState();
}

class _HomeFragmentScreenState extends State<HomeFragmentScreen> {
  int _activeIndex = 0;

  final List<String> bannerImages = [
    Assets.images.heroBanner.path,
    Assets.images.heroBanner.path,
    Assets.images.heroBanner.path,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeroBanner(),
              _buildSearchBar(),
              _buildDesignerCollection(),
              _buildTopTrends(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeroBanner() {
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
          left: 30,
          bottom: 40,
          child: AnimatedSmoothIndicator(
            activeIndex: _activeIndex,
            count: bannerImages.length,
            effect: const ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: Colors.white,
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
                    Assets.icons.profileIcon.image(width: 28, height: 28),
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
                  color: Colors.white,
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

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for products',
          hintStyle: const TextStyle(color: hint, fontSize: 14),
          prefixIcon: const Icon(Icons.search),
          filled: true,
          fillColor: searchBar,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: border),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: border),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: textColorBlue, width: 2),
          ),
        ),
      ),
    );
  }

  Widget _buildDesignerCollection() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Designer Collection',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: black,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DesignerCollection(),
                    ),
                  );
                },
                child: const Text(
                  'Show All',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: grey,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 190,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 140,
                  margin: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: productImages[index].image(
                          width: 140,
                          height: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        productNames[index],
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopTrends() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Top Trends',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: black,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TopTrends(),
                    ),
                  );
                },
                child: const Text(
                  'Show All',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: grey,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 220,
                  margin: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: productImages[index].image(
                          width: 65,
                          height: 65,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productNames[index],
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              productDescription[index],
                              style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
