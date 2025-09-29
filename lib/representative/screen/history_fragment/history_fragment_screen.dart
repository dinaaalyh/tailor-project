import 'package:flutter/material.dart';
import 'package:tailor_project/representative/screen/history_detail_screen.dart';
import 'package:tailor_project/representative/screen/history_fragment/widgets/order_item.dart';
import 'package:tailor_project/utils/assets.gen.dart';
import 'package:tailor_project/utils/colors.dart';

class HistoryFragmentScreen extends StatefulWidget {
  const HistoryFragmentScreen({super.key});

  @override
  State<HistoryFragmentScreen> createState() => _HistoryFragmentScreenState();
}

class _HistoryFragmentScreenState extends State<HistoryFragmentScreen> {
  final List<Map<String, dynamic>> _orders = [
    {
      "id": 1,
      "image": Assets.images.product9.path,
      "name": "Gamis Kaftan",
      "date": "15 Oct 2025",
      "items": 1,
      "status": "Pesanan Selesai",
    },
    {
      "id": 2,
      "image": Assets.images.product9.path,
      "name": "Gamis Kaftan",
      "date": "15 Oct 2025",
      "items": 1,
      "status": "Menunggu",
    },
    {
      "id": 3,
      "image": Assets.images.product9.path,
      "name": "Gamis Kaftan",
      "date": "15 Oct 2025",
      "items": 1,
      "status": "Diproses",
    },
    {
      "id": 4,
      "image": Assets.images.product9.path,
      "name": "Gamis Kaftan",
      "date": "15 Oct 2025",
      "items": 1,
      "status": "Pesanan Selesai",
    },
    {
      "id": 5,
      "image": Assets.images.product9.path,
      "name": "Gamis Kaftan",
      "date": "15 Oct 2025",
      "items": 1,
      "status": "Menunggu",
    },
    {
      "id": 6,
      "image": Assets.images.product9.path,
      "name": "Gamis Kaftan",
      "date": "15 Oct 2025",
      "items": 1,
      "status": "Diproses",
    },
    {
      "id": 7,
      "image": Assets.images.product9.path,
      "name": "Gamis Kaftan",
      "date": "15 Oct 2025",
      "items": 1,
      "status": "Diproses",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: bg,
        centerTitle: true,
        title: const Text(
          "History Order",
          style: TextStyle(color: white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            color: const Color(0xff890606),
            icon: const Icon(Icons.favorite_rounded),
            onPressed: () {},
          ),
          IconButton(
            color: white,
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: _orders.length,
        separatorBuilder: (context, index) => const Divider(
          color: grey,
          thickness: 0.8,
          height: 2,
        ),
        itemBuilder: (context, index) {
          final order = _orders[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HistoryDetailScreen(order: order),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
              child: HistoryOrderItem(
                image: order["image"],
                name: order["name"],
                date: order["date"],
                items: order["items"],
                status: order["status"],
              ),
            ),
          );
        },
      ),
    );
  }
}
