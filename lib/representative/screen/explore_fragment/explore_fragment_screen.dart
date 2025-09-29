import 'package:flutter/material.dart';
import 'package:tailor_project/representative/screen/show_product.dart';
import 'package:tailor_project/utils/assets.gen.dart';
import 'package:tailor_project/utils/colors.dart';

class ExploreFragmentScreen extends StatelessWidget {
  const ExploreFragmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {
        'title': 'Designer Collection',
        'image': Assets.images.product9.path,
      },
      {
        'title': 'Top Trends',
        'image': Assets.images.product9.path,
      },
      {
        'title': 'Baju',
        'image': Assets.images.product9.path,
      },
      {
        'title': 'Celana',
        'image': Assets.images.product9.path,
      },
    ];

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: bg,
        centerTitle: true,
        title: const Text(
          "Explore",
          style: TextStyle(color: white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            color: const Color(0xff890606),
            icon: const Icon(Icons.favorite_rounded),
            onPressed: () {},
          ),
          IconButton(
            color: white,
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 1,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 5 / 2,
            children: List.generate(
              categories.length,
              (index) {
                final item = categories[index];

                Widget page;
                switch (index) {
                  case 0:
                    page = const ShowProduct();
                    break;
                  case 1:
                    page = const ShowProduct();
                    break;
                  case 2:
                    page = const ShowProduct();
                    break;
                  case 3:
                    page = const ShowProduct();
                    break;
                  default:
                    page = const Placeholder();
                }

                return InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => page),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          item['image']!,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          color: Colors.black26,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            item['title']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 4,
                                  color: Colors.black45,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
