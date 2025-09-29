import 'package:flutter/material.dart';
import 'package:tailor_project/utils/colors.dart';

class OrderStatusBadge extends StatelessWidget {
  final String status;

  const OrderStatusBadge({super.key, required this.status});

  Color get _color {
    switch (status) {
      case "Pesanan Selesai":
        return bg;
      case "Menunggu":
        return onWaiting;
      case "Diproses":
        return onProgress;
      default:
        return grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            status,
            style: const TextStyle(color: white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 4),
        const Icon(
          Icons.chevron_right,
          size: 24,
          color: black,
        ),
      ],
    );
  }
}

