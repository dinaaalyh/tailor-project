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
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Gamis Kaftan",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Text(
                                    "1x Item",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Warna Putih\nSize: XL\nPanjang Baju: 110\nLingkar dada: 50\nLingkar pinggang: 70\nPanjang lengan: 60",
                                style: TextStyle(fontSize: 13),
                              ),
                              SizedBox(height: 4),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Rp500.000",
                                  style: TextStyle(
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
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Total Pemesanan : Rp500.000",
                        style: TextStyle(fontWeight: FontWeight.bold),
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
              child: const Padding(
                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Column(
                  children: [
                    _RowDetail(title: "No. Pesanan", value: "Ed-Gamis 202"),
                    _RowDetail(title: "Ongkir Pesanan", value: "Rp20.000"),
                    _RowDetail(title: "Metode Pembayaran", value: "Gopay"),
                    _RowDetail(title: "Dipesan tanggal", value: "15 Oct 2025"),
                    _RowDetail(title: "Estimasi Selesai Baju", value: "29 Oct 2025"),
                    Divider(color: grey2, thickness: 1.3),
                    _RowDetail(
                      title: "Total Pembayaran",
                      value: "Rp520.000",
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
