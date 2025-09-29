import 'package:flutter/material.dart';
import 'package:tailor_project/data/model/cart_item.dart';
import 'package:tailor_project/representative/widget/qty_control.dart';

class KeranjangScreen extends StatefulWidget {
  const KeranjangScreen({super.key});

  @override
  State<KeranjangScreen> createState() => _KeranjangScreenState();
}

class _KeranjangScreenState extends State<KeranjangScreen> {
  // Dummy data (boleh kamu ganti ke asset lokal)
  final List<CartItem> items = [
    CartItem(
      title: 'Gamis Kaftan 1',
      image: 'assets/images/baju1.png',
      size: 'L',
      colorName: 'Putih',
      price: 500000,
    ),
    CartItem(
      title: 'Gamis Kaftan 2',
      image: 'assets/images/baju2.jpeg',
      size: 'M',
      colorName: 'Coklat',
      price: 490000,
    ),
    CartItem(
      title: 'Celana 1',
      image: 'assets/images/celana1.png',
      size: '32',
      colorName: 'Hitam',
      price: 250000,
    ),
    // ...lanjutkan sesuai file di foldermu
  ];

  // Getter ringkas
  bool get allChecked => items.every((e) => e.checked);
  int get selectedCount => items.where((e) => e.checked).fold(0, (p, e) => p + e.qty);
  int get totalSelectedPrice => items.where((e) => e.checked).fold(0, (p, e) => p + e.price * e.qty);

  // Formatter rupiah sederhana: 500000 -> Rp500.000
  String rupiah(int value) {
    final s = value.toString();
    final buf = StringBuffer();
    int c = 0;
    for (int i = s.length - 1; i >= 0; i--) {
      buf.write(s[i]);
      c++;
      if (c % 3 == 0 && i != 0) buf.write('.');
    }
    return 'Rp${buf.toString().split('').reversed.join()}';
  }

  // Toggle semua checkbox
  void _toggleAll(bool checked) {
    setState(() {
      for (final it in items) {
        it.checked = checked;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF006171),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text('My Basket', style: TextStyle(fontWeight: FontWeight.w600)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {}, // TODO: navigator.pop()
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(Icons.favorite, color: Color(0xFF890606)),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.shopping_cart, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount: items.length,
              // garis pemisah antar item
              separatorBuilder: (_, __) => const Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFE5E7EB),
              ),
              itemBuilder: (context, index) {
                final item = items[index];
                return Container(
                  // full-bleed: tanpa margin & radius
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Checkbox
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: SizedBox(
                          width: 28,
                          height: 28,
                          child: Checkbox(
                            value: item.checked,
                            onChanged: (v) => setState(() => item.checked = v ?? false),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            visualDensity: VisualDensity.compact,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),

                      // Gambar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          item.image,
                          width: 72, // sedikit lebih besar biar proporsional
                          height: 72,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 12),

                      // Info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  height: 1.1,
                                )),
                            const SizedBox(height: 4),
                            Text('•  ${item.size}    •  ${item.colorName}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF6B7280),
                                )),
                            const SizedBox(height: 10),
                            Text(
                              rupiah(item.price),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),

                      // Qty control
                      QtyControl(
                        value: item.qty,
                        onDec: () => setState(() {
                          if (item.qty > 1) item.qty--;
                        }),
                        onInc: () => setState(() => item.qty++),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Bottom Bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(color: Color(0x1A000000), blurRadius: 8, offset: Offset(0, -2))
            ]),
            child: Row(
              children: [
                SizedBox(
                  width: 28,
                  height: 28,
                  child: Checkbox(
                    value: allChecked,
                    onChanged: (v) => _toggleAll(v ?? false),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    visualDensity: VisualDensity.compact,
                  ),
                ),
                const SizedBox(width: 6),
                const Text('Semua', style: TextStyle(fontWeight: FontWeight.w600)),
                const Spacer(),

                // Total
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F5F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    rupiah(totalSelectedPrice),
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(width: 8),

                // Checkout
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    backgroundColor: const Color(0xFF006171),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: selectedCount == 0
                      ? null
                      : () {
                          // TODO: aksi checkout
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Checkout $selectedCount item')),
                          );
                        },
                  child: Text('Checkout ($selectedCount)'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
