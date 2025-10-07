import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tailor_project/data/model/products_data.dart';
import 'package:tailor_project/representative/screen/favorite_fragment_screen.dart';
import 'package:tailor_project/representative/screen/product_detail_screen.dart';
import 'package:tailor_project/utils/assets.gen.dart';
import 'package:tailor_project/utils/colors.dart';

class ShowProductScreen extends StatefulWidget {
  final String category;
  final List<Product> products;

  const ShowProductScreen({
    super.key,
    required this.category,
    required this.products,
  });

  @override
  State<ShowProductScreen> createState() => _ShowProductScreenState();
}

class _ShowProductScreenState extends State<ShowProductScreen> {
  final Set<int> _favoriteIds = <int>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: bg,
        title: Center(
          child: Text(
            widget.category,
            style: const TextStyle(color: white, fontWeight: FontWeight.w600),
          ),
        ),
        leading: IconButton(
          color: white,
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            color: const Color(0xff890606),
            iconSize: 32,
            icon: const Icon(Icons.favorite_rounded),
            onPressed: () async {
              final favItems = widget.products.where((p) => _favoriteIds.contains(p.id)).toList();
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => FavoriteFragmentScreen(
                    items: favItems,
                    onFavoriteRemoved: (id) {
                      setState(() => _favoriteIds.remove(id));
                    },
                  ),
                ),
              );
            },
          ),
          IconButton(
            color: white,
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
        child: GridView.builder(
          itemCount: widget.products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 12,
            childAspectRatio: 0.88,
          ),
          itemBuilder: (context, index) {
            final p = widget.products[index];
            final isFav = _favoriteIds.contains(p.id);
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailScreen(product: p),
                  ),
                );
              },
              child: buildProductCard(
                assetImage: p.image,
                productName: p.name,
                price: p.price,
                isFavorite: isFav,
                onToggleFavorite: () {
                  setState(
                    () {
                      isFav ? _favoriteIds.remove(p.id) : _favoriteIds.add(p.id);
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildProductCard({
    required AssetGenImage assetImage,
    required String productName,
    required int price,
    required bool isFavorite,
    required VoidCallback onToggleFavorite,
  }) {
    const redHeart = Color(0xff890606);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 4,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Stack(
              children: [
                SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: assetImage.image(fit: BoxFit.cover),
                ),
                Positioned(
                  right: 6,
                  top: 6,
                  child: Material(
                    color: Colors.white.withOpacity(0.85),
                    shape: const CircleBorder(),
                    child: InkWell(
                      customBorder: const CircleBorder(),
                      onTap: onToggleFavorite,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Icon(
                          isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
                          size: 18,
                          color: isFavorite ? redHeart : Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 10, 12, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        productName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.grey.shade300,
                      child: const Icon(Icons.add, size: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      NumberFormat.currency(
                        locale: 'id_ID',
                        symbol: 'Rp',
                        decimalDigits: 0,
                      ).format(price),
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        color: Color(0xff5C5C5C),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text('• Size XXL', style: TextStyle(fontSize: 10)),
                    const SizedBox(width: 4),
                    const Text('• Warna', style: TextStyle(fontSize: 10)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
