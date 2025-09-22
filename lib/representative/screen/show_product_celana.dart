import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tailor_project/utils/assets.gen.dart';
import 'package:tailor_project/utils/colors.dart';

class ShowProductCelana extends StatefulWidget {
  const ShowProductCelana({super.key});

  @override
  State<ShowProductCelana> createState() => _ShowProductCelanaState();
}

class _ShowProductCelanaState extends State<ShowProductCelana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bg,
        title: const Center(
          child: Text(
            "Celana Top",
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
              assetImage: Assets.images.celana1,
              productName: 'Lassie Alpha Jeans Wanita Model Cutbray Highwaist Color Blue Retro ｜ J79',
              price: 190000,
            ),
            buildProductCard(
              assetImage: Assets.images.celana2,
              productName: 'JINISO Kulot Highwaist Jeans Relax ｜ 775',
              price: 189500,
            ),
            buildProductCard(
              assetImage: Assets.images.celana3,
              productName: 'NUBER Skinny Highwaist Celana Panjang Soft Jeans Petunia',
              price: 174900,
            ),
            buildProductCard(
              assetImage: Assets.images.celana4,
              productName: 'Momiasi Celana Hamil Jeans Denim Strech Jumbo Maternity Pants',
              price: 149000,
            ),
            buildProductCard(
              assetImage: Assets.images.celana5,
              productName: 'ESROCTE Naia Pants',
              price: 134215,
            ),
            buildProductCard(
              assetImage: Assets.images.celana6,
              productName: 'F·MIGA Korean Style Highwaist Straight Jeans ｜ C30',
              price: 109000,
            ),
            buildProductCard(
              assetImage: Assets.images.celana7,
              productName: 'MKY Clothing Celana Boyfriend Ripped Jeans',
              price: 191800,
            ),
            buildProductCard(
              assetImage: Assets.images.celana8,
              productName: 'Baggylooks Liza Highwaist Jeans',
              price: 299000,
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
              child: assetImage != null
                  ? assetImage.image(fit: BoxFit.cover)
                  : Container(color: Colors.grey[300]),
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