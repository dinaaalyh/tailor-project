import 'package:flutter/material.dart';
import 'package:tailor_project/representative/widget/order_action_button.dart';
import 'package:tailor_project/representative/widget/status_order_header.dart';
import 'package:tailor_project/utils/colors.dart';

class HistoryDetailScreen extends StatelessWidget {
  final Map<String, dynamic> order;

  const HistoryDetailScreen({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: bg,
        title: const Text(
          'Detail Order',
          style: TextStyle(color: white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: white, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: backgroundCard,
              margin: EdgeInsets.zero,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: const BorderSide(color: grey2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StatusHeader(status: order["status"] ?? "selesai"),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.location_on, color: black),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Alamat Pengiriman",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: fontCard),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                order["receiver"] ?? "Nisee Dumps",
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              Text(
                                order["address"] ?? "Jalan margasari no.41 Rt.02/Rw.08, Kec kesambi, Kel Sunyaragi",
                                style: const TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Card(
              color: backgroundCard,
              margin: EdgeInsets.zero,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: const BorderSide(color: grey2),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14, 14, 16, 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          order["image"] ?? 'assets/images/gamis.jpg',
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    order["name"] ?? "Produk",
                                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "${order["quantity"] ?? 1}x Item",
                                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "Warna: ${order["color"] ?? "-"}\n"
                                "Size: ${order["size"] ?? "-"}\n"
                                "Panjang Baju: ${order["panjangBaju"] ?? "-"}\n"
                                "Lingkar Dada: ${order["lingkarDada"] ?? "-"}\n"
                                "Lingkar Pinggang: ${order["lingkarPinggang"] ?? "-"}\n"
                                "Panjang Lengan: ${order["panjangLengan"] ?? "-"}",
                                style: const TextStyle(fontSize: 13),
                              ),
                              const SizedBox(height: 4),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Rp${order["total"]}",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(color: grey2),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Total Pemesanan : Rp${order["total"]}",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              color: backgroundCard,
              margin: EdgeInsets.zero,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: const BorderSide(color: grey2),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Column(
                  children: [
                    _RowDetail(title: "No. Pesanan", value: order["orderNumber"] ?? "-"),
                    _RowDetail(title: "Ongkir Pesanan", value: "Rp${order["shippingFee"] ?? 0}"),
                    _RowDetail(title: "Metode Pembayaran", value: order["paymentMethod"] ?? "-"),
                    _RowDetail(title: "Dipesan tanggal", value: order["orderDate"] ?? "-"),
                    _RowDetail(title: "Estimasi Selesai Baju", value: order["estimateDate"] ?? "-"),
                    const Divider(color: grey2, thickness: 1.3),
                    _RowDetail(
                      title: "Total Pembayaran",
                      value: "Rp${(order["total"] ?? 0) + (order["shippingFee"] ?? 0)}",
                      bold: true,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: OrderActionButton(status: order["status"]),
        ),
      ),
    );
  }
}

class _RowDetail extends StatelessWidget {
  final String title;
  final String value;
  final bool bold;

  const _RowDetail({
    required this.title,
    required this.value,
    this.bold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Text(value, style: TextStyle(fontSize: 14, fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }
}
