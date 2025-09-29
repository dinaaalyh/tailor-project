import 'package:flutter/material.dart';
import 'package:tailor_project/utils/colors.dart';
import 'package:tailor_project/utils/status_helper.dart'; 

class StatusHeader extends StatelessWidget {
  final String status;

  const StatusHeader({super.key, required this.status});

  Color _getHeaderColor(String status) {
    switch (status) {
      case "selesai":
        return headerEndCard;
      case "menunggu":
        return headerWaitCard;
      case "proses":
        return headerProgCard;
      case "gagal":
        return red;
      default:
        return grey;
    }
  }

  String _getStatusText(String status) {
    switch (status) {
      case "selesai":
        return "Pesanan Selesai";
      case "menunggu":
        return "Pesanan Menunggu";
      case "proses":
        return "Pesanan Diproses";
      case "gagal":
        return "Pesanan Gagal";
      default:
        return "Status Tidak Diketahui";
    }
  }

  @override
  Widget build(BuildContext context) {
    final normalized = normalizeStatus(status);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 6, 6, 6),
      decoration: BoxDecoration(
        color: _getHeaderColor(normalized),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(6),
          topRight: Radius.circular(6),
        ),
      ),
      child: Text(
        _getStatusText(normalized),
        style: const TextStyle(
          color: white,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}
