import 'package:flutter/material.dart';

class QtyControl extends StatelessWidget {
  final int value;
  final VoidCallback onDec;
  final VoidCallback onInc;

  const QtyControl({
    super.key,
    required this.value,
    required this.onDec,
    required this.onInc,
  });

  Widget _btn(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 28,
        height: 28,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xFFF3F4F6),
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: const Color(0xFFE5E7EB)),
        ),
        child: Icon(icon, size: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _btn(Icons.remove, onDec),
        Container(
          width: 34,
          height: 28,
          margin: const EdgeInsets.symmetric(horizontal: 6),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: const Color(0xFFE5E7EB)),
          ),
          child: Text('$value', style: const TextStyle(fontWeight: FontWeight.w700)),
        ),
        _btn(Icons.add, onInc),
      ],
    );
  }
}
