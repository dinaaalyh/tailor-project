import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tailor_project/representative/screen/payment_screen.dart';
import 'package:tailor_project/utils/colors.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _quantity = 1;

  final _warnaController = TextEditingController();
  final _panjangBajuC = TextEditingController();
  final _lingkarDadaC = TextEditingController();
  final _lingkarPinggangC = TextEditingController();
  final _panjangLenganC = TextEditingController();

  final List<String> _sizes = [
    'XL',
    'XS',
    'S',
    'M',
    'L'
  ];
  int _selectedSize = 0;

  @override
  void dispose() {
    _warnaController.dispose();
    _panjangBajuC.dispose();
    _lingkarDadaC.dispose();
    _lingkarPinggangC.dispose();
    _panjangLenganC.dispose();
    super.dispose();
  }

  String formatRupiah(int amount) {
    final f = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
    return f.format(amount);
  }

  InputDecoration _deco(String hint) => InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: const Color(0xFFF2F2F2),
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      );

  Widget _helper(String text) => Padding(
        padding: const EdgeInsets.only(top: 4, bottom: 12),
        child: Text(text, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      );

  bool _isFormValid() {
    return _panjangBajuC.text.isNotEmpty && _lingkarDadaC.text.isNotEmpty && _lingkarPinggangC.text.isNotEmpty && _panjangLenganC.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Column(
            children: [
              // ================== Hero image + icons ==================
              Stack(
                children: [
                  Image.asset(
                    'assets/images/product9.png',
                    width: double.infinity,
                    height: 380,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: _circleIcon(Icons.arrow_back_ios_new, () {
                      Navigator.pop(context);
                    }),
                  ),
                  Positioned(
                    top: 16,
                    right: 60,
                    child: _circleIcon(Icons.favorite, () {
                      // TODO: toggle favorit
                    }, iconColor: Colors.red),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: _circleIcon(Icons.shopping_cart, () {
                      // TODO: ke keranjang
                    }),
                  ),
                ],
              ),
              // ================== Tab Bar ==================
              Container(
                color: white,
                child: const TabBar(
                  labelColor: bg,
                  unselectedLabelColor: Colors.black54,
                  indicatorColor: bg,
                  indicatorWeight: 1,
                  tabs: [
                    Tab(text: "Detail Produk"),
                    Tab(text: "Form Pemesanan"),
                  ],
                ),
              ),
              // ================== Content ==================
              Expanded(
                child: TabBarView(
                  children: [
                    // ===== Tab 1: Detail Produk =====
                    SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "224 ratings",
                              style: TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Gamis Kaftan",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.orange, size: 18),
                                  Icon(Icons.star, color: Colors.orange, size: 18),
                                  Icon(Icons.star, color: Colors.orange, size: 18),
                                  Icon(Icons.star, color: Colors.orange, size: 18),
                                  Icon(Icons.star_half, color: Colors.orange, size: 18),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Gamis yang populer belakangan ini juga bisa menjadi opsi dalam menentukan gamis yang akan dipakai di hari lebaran. "
                            "Gamis ini terlihat menawan dan sangat modis dengan terusan panjang dan bagian lengan yang melebar besar sehingga sangat cocok "
                            "dipakai oleh orang dengan bentuk badan apapun.",
                            style: TextStyle(fontSize: 14),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            formatRupiah(500000),
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                    // ===== Tab 2: Form Pemesanan =====
                    Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text("Qty", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                                    const SizedBox(width: 12),
                                    _qtyButton("-", () {
                                      setState(() {
                                        if (_quantity > 1) _quantity--;
                                      });
                                    }),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 12),
                                      child: Text("$_quantity", style: const TextStyle(fontSize: 16)),
                                    ),
                                    _qtyButton(
                                      "+",
                                      () {
                                        setState(() {
                                          _quantity++;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                const Text("Warna", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                                const SizedBox(height: 6),
                                TextField(
                                  controller: _warnaController,
                                  onChanged: (_) => setState(() {}),
                                  decoration: _deco("Masukan warna"),
                                ),
                                _helper("Masukan warna yang diinginkan"),
                                const SizedBox(height: 6),
                                const Text("Size", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                                const SizedBox(height: 8),
                                Wrap(
                                  spacing: 8,
                                  runSpacing: 8,
                                  children: List.generate(_sizes.length, (i) {
                                    final sel = _selectedSize == i;
                                    return ChoiceChip(
                                      label: Text(_sizes[i]),
                                      selected: sel,
                                      onSelected: (_) => setState(() => _selectedSize = i),
                                      selectedColor: const Color(0xFF006171),
                                      labelStyle: TextStyle(color: sel ? white : Colors.black87),
                                      backgroundColor: const Color(0xFFEDEDED),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                    );
                                  }),
                                ),
                                _helper("Pilih size gamis yang diinginkan"),
                                const Text("Panjang Baju", style: TextStyle(fontWeight: FontWeight.w600)),
                                const SizedBox(height: 6),
                                TextField(
                                  controller: _panjangBajuC,
                                  keyboardType: TextInputType.number,
                                  onChanged: (_) => setState(() {}),
                                  decoration: _deco("Masukan Panjang Baju"),
                                ),
                                _helper("Masukan panjang baju yang diinginkan"),
                                const Text("Lingkar Dada", style: TextStyle(fontWeight: FontWeight.w600)),
                                const SizedBox(height: 6),
                                TextField(
                                  controller: _lingkarDadaC,
                                  keyboardType: TextInputType.number,
                                  onChanged: (_) => setState(() {}),
                                  decoration: _deco("Masukan Lingkar Dada"),
                                ),
                                _helper("Masukan lingkar dada yang diinginkan"),
                                const Text("Lingkar Pinggang", style: TextStyle(fontWeight: FontWeight.w600)),
                                const SizedBox(height: 6),
                                TextField(
                                  controller: _lingkarPinggangC,
                                  keyboardType: TextInputType.number,
                                  onChanged: (_) => setState(() {}),
                                  decoration: _deco("Masukan Lingkar Pinggang"),
                                ),
                                _helper("Masukan Lingkar Pinggang yang diinginkan"),
                                const Text("Panjang Lengan", style: TextStyle(fontWeight: FontWeight.w600)),
                                const SizedBox(height: 6),
                                TextField(
                                  controller: _panjangLenganC,
                                  keyboardType: TextInputType.number,
                                  onChanged: (_) => setState(() {}),
                                  decoration: _deco("Masukan Panjang Lengan"),
                                ),
                                _helper("Masukan Panjang lengan yang diinginkan"),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                        SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: _isFormValid()
                                        ? () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => const PaymentScreen(),
                                              ),
                                            );
                                          }
                                        : null,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff44858B),
                                      padding: const EdgeInsets.symmetric(vertical: 10),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                    ),
                                    child: const Text(
                                      "Pesan Sekarang",
                                      style: TextStyle(fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // TODO: add to cart
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff44858B),
                                      padding: const EdgeInsets.symmetric(vertical: 10),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                    ),
                                    child: const Text(
                                      "Keranjang",
                                      style: TextStyle(fontSize: 16, color: white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onOrderNow() {
    // Validasi ringan agar user isi ukuran dulu
    if (_panjangBajuC.text.isEmpty || _lingkarDadaC.text.isEmpty || _lingkarPinggangC.text.isEmpty || _panjangLenganC.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Lengkapi ukuran terlebih dahulu")),
      );
      return;
    }
    // TODO: lanjut ke checkout
  }

  // ================= helpers =================
  Widget _circleIcon(IconData icon, VoidCallback onPressed, {Color iconColor = Colors.black}) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.white,
      child: IconButton(
        icon: Icon(icon, color: iconColor, size: 20),
        onPressed: onPressed,
      ),
    );
  }

  Widget _qtyButton(String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 28,
        height: 28,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(label, style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}
