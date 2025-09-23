import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tailor_project/representative/models/designer_collection_models.dart';
import 'package:tailor_project/representative/screen/designer_collection.dart';
import 'package:tailor_project/representative/screen/explore_fragment/explore_fragment_screen.dart';
import 'package:tailor_project/representative/screen/show_product.dart';
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
              // Hero Banner Section
              _buildHeroBanner(),

              // Search Bar
              _buildSearchBar(),

              // Designer Collection Section
              _buildDesignerCollection(),

              // Top Trends Section
              // _buildTopTrends(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeroBanner() {
    return Stack(
      // alignment: Alignment.bottomLeft,
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
                'Shop All',
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
      padding: const EdgeInsets.all(16.0),
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
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
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
            height: 200,
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
          // SizedBox(
          //   height: 250,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 5,
          //     itemBuilder: (context, index) {
          //       return Container(
          //         width: 160,
          //         margin: const EdgeInsets.only(right: 16.0),
          //         decoration: BoxDecoration(
          //           color: Colors.white,

          //           borderRadius: BorderRadius.circular(12.0),
          //           boxShadow: [
          //             BoxShadow(
          //               color: Colors.grey.withOpacity(0.1),
          //               spreadRadius: 2,
          //               blurRadius: 5,
          //               offset: const Offset(0, 3),
          //             ),
          //           ],
          //         ),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             ClipRRect(
          //               borderRadius: const BorderRadius.only(
          //                 topLeft: Radius.circular(12.0),
          //                 topRight: Radius.circular(12.0),
          //               ),
          //               child: Image.asset(
          //                 Assets.images.heroBanner.path,
          //                 height: 150,
          //                 width: double.infinity,
          //                 fit: BoxFit.cover,
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: const [
          //                   Text(
          //                     'Elegant Dress',
          //                     style: TextStyle(
          //                       fontSize: 16,
          //                       fontWeight: FontWeight.bold,
          //                       color: black,
          //                     ),
          //                   ),
          //                   SizedBox(height: 4),
          //                   Text(
          //                     '\$120',
          //                     style: TextStyle(
          //                       fontSize: 14,
          //                       color: primaryColor,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
