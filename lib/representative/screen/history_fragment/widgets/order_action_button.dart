import 'package:flutter/material.dart';
import 'package:tailor_project/utils/colors.dart';

class OrderActionButtons extends StatelessWidget {
  const OrderActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            minimumSize: const Size(0, 0),
            side: const BorderSide(color: bg, width: 1.5),
            textStyle: const TextStyle(fontSize: 12, color: bg, fontWeight: FontWeight.bold),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          onPressed: () {},
          child: const Text(
            "Lihat Penilaian",
            style: TextStyle(color: fontproduct, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 6),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            minimumSize: const Size(0, 0),
            side: const BorderSide(color: onProgress, width: 1.5),
            textStyle: const TextStyle(fontSize: 12, color: onProgress, fontWeight: FontWeight.bold),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          onPressed: () {},
          child: const Text(
            "Order Again",
            style: TextStyle(color: darkRed, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
