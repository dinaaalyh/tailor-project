import 'package:flutter/material.dart';
import 'package:tailor_project/utils/colors.dart';
import 'package:tailor_project/utils/status_helper.dart';

class OrderActionButton extends StatelessWidget {
  final String status;

  const OrderActionButton({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final normalized = normalizeStatus(status);

    if (normalized == "selesai") {
      return Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
                foregroundColor: black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {},
              child: const Text("Nilai Pesanan", style: TextStyle(fontSize: 16)),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: bg,
                foregroundColor: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {},
              child: const Text("Order Again", style: TextStyle(fontSize: 16)),
            ),
          ),
        ],
      );
    } else if (normalized == "menunggu" || normalized == "proses") {
      return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.shade300,
            foregroundColor: white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          onPressed: () {},
          child: const Text("Pesanan Diterima", style: TextStyle(fontSize: 16)),
        ),
      );
    } else if (normalized == "gagal") {
      return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.shade300,
            foregroundColor: white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          onPressed: null,
          child: const Text("Pesanan Tidak Diproses", style: TextStyle(fontSize: 16)),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
