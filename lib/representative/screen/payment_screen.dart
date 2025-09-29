import 'package:flutter/material.dart';
import 'package:tailor_project/representative/screen/history_detail_screen.dart';
import 'package:tailor_project/utils/colors.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String? uploadedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: bg,
        title: const Text(
          'Payment',
          style: TextStyle(color: white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: white, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ================= ALAMAT =================
              Container(
                padding: const EdgeInsets.fromLTRB(12, 6, 12, 24),
                color: white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Masukan Alamat Pengiriman",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Masukan alamat pengiriman",
                        hintStyle: const TextStyle(fontSize: 13, color: Colors.grey),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        filled: true,
                        fillColor: address,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3),
                          borderSide: const BorderSide(color: grey2, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3),
                          borderSide: const BorderSide(color: Colors.black, width: 1.2),
                        ),
                      ),
                      style: const TextStyle(fontSize: 13),
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
              // ================= PRODUK =================
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
                            'assets/images/product9.png',
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
              // ================= DETAIL =================
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
              const SizedBox(height: 8),
              // ================= REKENING =================
              Card(
                color: backgroundCard,
                margin: EdgeInsets.zero,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                  side: const BorderSide(color: grey2),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Rekening Pembayaran",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(fontSize: 13, color: Colors.black),
                          children: [
                            TextSpan(text: "Silahkan lakukan pembayaran ke nomor rekening berikut:\n"),
                            TextSpan(text: "Bank BCA\n", style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: "No. Rekening: 123-456-7890\n"),
                            TextSpan(text: "Atas Nama: PT Tailor Project\n"),
                            TextSpan(text: "\nTotal Pembayaran: ", style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: "Rp520.000", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Divider(color: grey2),
                      const SizedBox(height: 8),
                      const Text(
                        "Upload Bukti Pembayaran",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: Tambahkan fungsi pick file / image
                          setState(() {
                            uploadedFile = "bukti_transfer.jpg";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: grey2),
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: const Text(
                          "Upload Bukti Pembayaran",
                          style: TextStyle(color: black, fontWeight: FontWeight.w500),
                        ),
                      ),
                      if (uploadedFile != null) ...[
                        const SizedBox(height: 8),
                        Text("File terunggah: $uploadedFile", style: const TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 12, color: Colors.black),
                  children: [
                    TextSpan(text: "Dengan menekan tombol "),
                    TextSpan(text: "\Konfirmasi Pembayaran\, ", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "bukti pembayaran akan dicek, lalu pembayaran akan "),
                    TextSpan(text: "dikonfimasi ", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "dalam "),
                    TextSpan(text: "1x24 jam ", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "setelah bukti transfer diupload."),
                  ],
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: bg,
                foregroundColor: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: uploadedFile == null
                  ? null
                  : () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Pembayaran diproses...")),
                      );
                      Future.delayed(const Duration(seconds: 1), () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HistoryDetailScreen(
                              order: {
                                "status": "menunggu",
                                "receiver": "Nisee Dumps",
                                "address": "Jalan margasari no.41 Rt.02/Rw.08, Kec kesambi, Kel Sunyaragi",
                                "image": "assets/images/product9.png",
                              },
                            ),
                          ),
                        );
                      });
                    },
              child: const Text(
                "Konfirmasi Pembayaran",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
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
