import 'package:flutter/material.dart';
import 'package:tailor_project/data/model/products_data.dart';
import 'package:tailor_project/representative/screen/product_detail_screen.dart';
import 'package:tailor_project/representative/screen/show_product_screen.dart';
import 'package:tailor_project/utils/colors.dart';

class TopTrends extends StatelessWidget {
  TopTrends({super.key});

  final topTrendsCategory = ProductCategories.firstWhere(
    (category) => category.title == 'Top Trends',
  );

  @override
  Widget build(BuildContext context) {
    final topTrendsProducts = topTrendsCategory.products;

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
                      builder: (context) => ShowProductScreen(
                        category: topTrendsCategory.title,
                        products: topTrendsProducts,
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Show All',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: grey),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topTrendsProducts.length,
              itemBuilder: (context, index) {
                final product = topTrendsProducts[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailScreen(product: product),
                      ),
                    );
                  },
                  child: Container(
                    width: 220,
                    margin: const EdgeInsets.only(right: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: product.image.image(
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
                                product.name,
                                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                product.description,
                                style: const TextStyle(fontSize: 10),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
