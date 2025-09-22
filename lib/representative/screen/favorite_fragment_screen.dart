import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tailor_project/representative/modals/product.dart';
import 'package:tailor_project/utils/colors.dart';

final _money =
    NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
String _price(num n) => _money.format(n);
String _descOrFallback(String? d) => (d != null && d.trim().isNotEmpty)
    ? d
    : 'Gamis yang populer belakangan ini juga bisa menjadi opsi dalam';

class FavoriteFragmentScreen extends StatefulWidget {
  final List<Product> items;
  final void Function(int productId)? onFavoriteRemoved;
  const FavoriteFragmentScreen({super.key, required this.items, this.onFavoriteRemoved,  });

  @override
  State<FavoriteFragmentScreen> createState() => _FavoriteFragmentScreenState();
}

class _FavoriteFragmentScreenState extends State<FavoriteFragmentScreen> {
  @override
  Widget build(BuildContext context) {
    final items = widget.items;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: bg,
        title: const Center(
            child: Text('My Favorite',
                style: TextStyle(color: white, fontWeight: FontWeight.w600))),
        leading: IconButton(
            color: white,
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () => Navigator.pop(context)),
        actions: const [
          Icon(Icons.favorite_rounded, color: Color(0xff890606), size: 28),
          SizedBox(width: 12),
          Icon(Icons.shopping_cart, color: white),
          SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: items.isEmpty
            ? const Center(child: Text('Belum ada favorit'))
            : ListView.separated(
                // ← full-bleed: tidak ada padding sama sekali
                padding: EdgeInsets.zero,
                itemCount: items.length,
                // tidak ada jarak antar item (kalau mau garis tipis, ganti ke Divider)
                separatorBuilder: (_, __) => const SizedBox.shrink(),
                itemBuilder: (context, i) => ProductFavCard(
                  product: items[i],
                  onRemove: () => setState(() => items.removeAt(i)),
                ),
              ),
      ),
    );
  }
}

class ProductFavCard extends StatelessWidget {
  final Product product;
  final VoidCallback? onRemove;

  const ProductFavCard({super.key, required this.product, this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Kartu utama: full width, TANPA padding/margin
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFFE4E4E4)),
            boxShadow: const [
              BoxShadow(
                  blurRadius: 6, offset: Offset(0, 2), color: Color(0x11000000))
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Foto kiri
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: product.image.image(
                    width: 83,
                    height: 83,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Sedikit spasi antara foto & teks (kalau mau benar2 rapat, hapus ini)
              const SizedBox(width: 8),

              // Teks
              Expanded(
                child: Padding(
                  // biar isi tidak nempel terlalu mepet kanan/atas/bawah, minimal 8.
                  // kalau mau 0 total, hapus Padding ini juga.
                  padding: const EdgeInsets.fromLTRB(10, 10, 8, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.name,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87)),
                      const SizedBox(height: 2),
                      const Text('• Size   • Warna',
                          style: TextStyle(
                              fontSize: 12.5,
                              color: Color(0xFF6B6B6B),
                              height: 1.2)),
                      const SizedBox(height: 2),
                      Text(_descOrFallback(product.description),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 12.5,
                              color: Color(0xFF6B6B6B),
                              height: 1.2)),
                      const SizedBox(height: 8),
                      Text(_price(product.price),
                          style: const TextStyle(
                              fontSize: 14.5,
                              fontWeight: FontWeight.w800,
                              color: Colors.black87)),
                    ],
                  ),
                ),
              ),

              // Buat ruang kecil agar teks tidak tabrakan icon hati
              const SizedBox(width: 28),
            ],
          ),
        ),

        // Ikon hati kanan atas
        Positioned(
          right: 6,
          top: 4,
          child: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            tooltip: 'Hapus dari favorit',
            icon: const Icon(Icons.favorite_rounded),
            color: const Color(0xff890606),
            onPressed: onRemove ?? () {},
          ),
        ),
      ],
    );
  }
}
