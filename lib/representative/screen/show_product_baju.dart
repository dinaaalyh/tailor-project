import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tailor_project/data/model/product.dart'; // ← PENTING
import 'package:tailor_project/representative/screen/favorite_fragment_screen.dart';
import 'package:tailor_project/utils/assets.gen.dart';
import 'package:tailor_project/utils/colors.dart';

class ShowProductBaju extends StatefulWidget {
  const ShowProductBaju({super.key});

  @override
  State<ShowProductBaju> createState() => _ShowProductBajuState();
}

class _ShowProductBajuState extends State<ShowProductBaju> {
  final List<Product> _products = [
    Product(
        id: 1,
        image: Assets.images.baju1,
        name: 'Femei Outer Blouse Slit Back Self Tie Wrap Crop Top',
        price: 125000,
        description: 'Outer cantik cocok untuk musim semi.'),
    Product(
        id: 2,
        image: Assets.images.baju2,
        name: 'TBig Size Crop Top Oversize Tee T-Shirt',
        price: 171143),
    Product(
        id: 3,
        image: Assets.images.baju3,
        name: 'MABELLE Korean Crop Top Blouse',
        price: 76000),
    Product(
        id: 4,
        image: Assets.images.baju4,
        name: 'Tiff Crop Blouse Outer 2in1',
        price: 105000),
    Product(
        id: 5,
        image: Assets.images.baju5,
        name: 'Malibu Shirt Kemeja Crop Top',
        price: 179998),
    Product(
        id: 6,
        image: Assets.images.baju6,
        name: 'Mirabel Top Blouse',
        price: 67000),
    Product(
        id: 7,
        image: Assets.images.baju7,
        name: 'Aria Jumpsuit',
        price: 189000),
    Product(
        id: 8,
        image: Assets.images.baju8,
        name: 'Organza Top Korean Blouse',
        price: 200000),
  ];

  final Set<int> _favoriteIds = <int>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bg,
        title: const Center(
            child: Text("Baju Top",
                style: TextStyle(color: white, fontWeight: FontWeight.w600))),
        leading: IconButton(
            color: white,
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () => Navigator.pop(context)),
        actions: [
          IconButton(
            color: const Color(0xff890606),
            iconSize: 32,
            icon: const Icon(Icons.favorite_rounded),
            onPressed: () async {
              final favItems =
                  _products.where((p) => _favoriteIds.contains(p.id)).toList();
              await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => FavoriteFragmentScreen(
                          items: favItems,
                          onFavoriteRemoved: (id) {
                            setState(
                                () => _favoriteIds.remove(id)); // sinkronkan!
                          },
                        )),
              );
            },
          ),
          IconButton(
              color: white,
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
        child: GridView.builder(
          itemCount: _products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 12,
            childAspectRatio: 0.88,
          ),
          itemBuilder: (context, index) {
            final p = _products[index];
            final isFav = _favoriteIds.contains(p.id);
            return buildProductCard(
              assetImage: p.image,
              productName: p.name,
              price: p.price,
              isFavorite: isFav,
              onToggleFavorite: () {
                setState(() {
                  isFav ? _favoriteIds.remove(p.id) : _favoriteIds.add(p.id);
                });
              },
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
              offset: const Offset(0, 2))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Stack(
              children: [
                SizedBox(
                    height: 120,
                    width: double.infinity,
                    child: assetImage.image(fit: BoxFit.cover)),
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
                          isFavorite
                              ? Icons.favorite_rounded
                              : Icons.favorite_border_rounded,
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
                          child: Text(productName,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15))),
                      CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.grey.shade300,
                          child: const Icon(Icons.add, size: 14)),
                    ]),
                const SizedBox(height: 6),
                Row(children: [
                  Text(
                      NumberFormat.currency(
                              locale: 'id_ID', symbol: 'Rp', decimalDigits: 0)
                          .format(price),
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          color: Color(0xff5C5C5C))),
                  const SizedBox(width: 10),
                  const Text('• Size XXL', style: TextStyle(fontSize: 10)),
                  const SizedBox(width: 4),
                  const Text('• Warna', style: TextStyle(fontSize: 10)),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
