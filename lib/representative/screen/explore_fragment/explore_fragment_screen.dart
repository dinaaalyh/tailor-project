import 'package:flutter/material.dart';
import 'package:tailor_project/data/model/products_data.dart'; // impor data produk
import 'package:tailor_project/representative/screen/show_product_screen.dart';
import 'package:tailor_project/utils/colors.dart';

class ExploreFragmentScreen extends StatelessWidget {
  const ExploreFragmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            children: List.generate(ProductCategories.length, (index) {
              final category = ProductCategories[index];

              return InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  // navigasi ke halaman ShowProductScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShowProductScreen(
                        category: category.title,
                        products: category.products,
                      ),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      // ambil gambar pertama dari kategori
                      Image.asset(
                        category.products.first.image.path,
                        fit: BoxFit.cover,
                      ),
                      Container(color: Colors.black26),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          category.title,
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
            }),
          ),
        ),
      ),
    );
  }
}
