import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tailor_project/utils/assets.gen.dart';
import 'package:tailor_project/utils/colors.dart';

// nanti disesuaikan dengan model dari backend

class DesignerCollection extends StatefulWidget {
  const DesignerCollection({super.key});

  @override
  State<DesignerCollection> createState() => _DesignerCollectionState();
}

class _DesignerCollectionState extends State<DesignerCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bg,
        title: const Center(
          child: Text(
            "Designer Collection",
            style: TextStyle(color: white, fontWeight: FontWeight.w600),
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
            onPressed: () {},
          ),
          IconButton(
            color: white,
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),

      // ✅ Gunakan GridView sebagai scroll utama (tanpa SingleChildScrollView)
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 12,
          childAspectRatio: 0.88, // Sesuaikan tinggi kartu agar lebih compact
          children: [
            buildProductCard(
              assetImage: Assets.images.product1,
              productName: 'GZM Zaskia Mecca Zeta Gamis Wanita White Series Binar Samudras',
              price: 510000,
            ),
            buildProductCard(
              assetImage: Assets.images.product2,
              productName: 'TUBITA Meena Lace Abaya',
              price: 276900,
            ),
            buildProductCard(
              assetImage: Assets.images.product3,
              productName: 'Lozy Hijab Hanida Abaya Set',
              price: 318900,
            ),
            buildProductCard(
              assetImage: Assets.images.product4,
              productName: 'Zayra Hijab Clemira Dress',
              price: 335000,
            ),
            buildProductCard(
              assetImage: Assets.images.product5,
              productName: 'Wulfi Gamis Camilla Maroon',
              price: 145000,
            ),
            buildProductCard(
              assetImage: Assets.images.product6,
              productName: 'Elzatta Long Dress Gamis Border L Monogram Satin',
              price: 389000,
            ),
            buildProductCard(
              assetImage: Assets.images.product7,
              productName: 'Ventedaily Elisha Maxy Gamis',
              price: 268250,
            ),
            buildProductCard(
              assetImage: Assets.images.product8,
              productName: 'Haura Hijab Syari Asiyah Set Gamis Syari Setelan Jilbab Cadar',
              price: 173500,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductCard({
    AssetGenImage? assetImage,
    required String productName,
    required int price,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gambar
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: SizedBox(
              height: 120,
              width: double.infinity,
              child: assetImage != null ? assetImage.image(fit: BoxFit.cover) : Container(color: Colors.grey[300]),
            ),
          ),

          // Konten
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 10, 12, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nama produk dan icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        productName,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.grey.shade300,
                          child: const Icon(Icons.add, size: 14),
                        ),
                        const SizedBox(width: 4),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.grey.shade300,
                          child: const Icon(Icons.favorite_border, size: 14),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                // Harga dan info
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
