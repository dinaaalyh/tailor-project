import 'package:flutter/material.dart';
import 'package:tailor_project/representative/screen/history_fragment/widgets/order_action_button.dart';
import 'package:tailor_project/representative/screen/history_fragment/widgets/order_status_badges.dart';

class HistoryOrderItem extends StatelessWidget {
  final String image;
  final String name;
  final String date;
  final int items;
  final String status;

  const HistoryOrderItem({
    super.key,
    required this.image,
    required this.name,
    required this.date,
    required this.items,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          child: Image.asset(image, width: 83, height: 83, fit: BoxFit.cover),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  OrderStatusBadge(status: status),
                ],
              ),
              const SizedBox(height: 2),
              Text(
                "$date   • $items Item   • Warna",
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black54),
              ),
              const SizedBox(height: 4),
              const OrderActionButtons(),
            ],
          ),
        ),
      ],
    );
  }
}

