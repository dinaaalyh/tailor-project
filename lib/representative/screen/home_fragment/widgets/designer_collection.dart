import 'package:flutter/material.dart';
import 'package:tailor_project/data/model/products_data.dart';
import 'package:tailor_project/representative/screen/show_product_screen.dart'; // ubah ke ShowProductScreen
import 'package:tailor_project/utils/colors.dart';

class DesignerCollection extends StatelessWidget {
  DesignerCollection({super.key});

  final designerCategory = ProductCategories.firstWhere(
    (category) => category.title == 'Designer Collection',
  );

  @override
  Widget build(BuildContext context) {
    final designerProducts = designerCategory.products;

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
                      builder: (context) => ShowProductScreen(
                        category: designerCategory.title,
                        products: designerProducts,
                      ),
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
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: designerProducts.length,
              itemBuilder: (context, index) {
                final product = designerProducts[index];
                return Container(
                  width: 140,
                  margin: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: product.image.image(
                          width: 140,
                          height: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
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
}
