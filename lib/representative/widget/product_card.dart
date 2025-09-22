import 'package:flutter/material.dart';

class Product {
  final String title;
  final String priceLabel;
  final String? imageUrl;
  final String? variantInfo;
  final String? sizeInfo;
  final bool isFavorite;

  const Product({
    required this.title,
    required this.priceLabel,
    this.imageUrl,
    this.variantInfo,
    this.sizeInfo,
    this.isFavorite = false,
  });

  Product copyWith({bool? isFavorite}) => Product(
        title: title,
        priceLabel: priceLabel,
        imageUrl: imageUrl,
        variantInfo: variantInfo,
        sizeInfo: sizeInfo,
        isFavorite: isFavorite ?? this.isFavorite,
      );
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    this.onTap,
    this.onToggleFavorite,
  });

  final Product product;
  final VoidCallback? onTap;
  final VoidCallback? onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // === FOTO PRODUK + LOVE BUTTON ===
            AspectRatio(
              aspectRatio: 1, // persegi
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                    child: product.imageUrl == null
                        ? Container(color: const Color(0xFFE9E9E9))
                        : Image.network(
                            product.imageUrl!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                  ),
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: InkWell(
                      onTap: onToggleFavorite,
                      borderRadius: BorderRadius.circular(16),
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.white.withOpacity(0.9),
                        child: Icon(
                          product.isFavorite ? Icons.favorite : Icons.favorite_border,
                          size: 16,
                          color: product.isFavorite ? Colors.red : Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // === INFORMASI PRODUK ===
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13.5),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      product.priceLabel,
                      style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 13.5),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        if (product.variantInfo != null) ...[
                          _smallDot(),
                          const SizedBox(width: 4),
                          Text(
                            product.variantInfo!,
                            style: const TextStyle(fontSize: 11.5, color: Colors.black54),
                          ),
                        ],
                        if (product.variantInfo != null && product.sizeInfo != null)
                          const SizedBox(width: 10),
                        if (product.sizeInfo != null) ...[
                          _smallDot(),
                          const SizedBox(width: 4),
                          Text(
                            product.sizeInfo!,
                            style: const TextStyle(fontSize: 11.5, color: Colors.black54),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _smallDot() => Container(
        width: 6,
        height: 6,
        decoration: const BoxDecoration(
          color: Color(0xFFBDBDBD),
          shape: BoxShape.circle,
        ),
      );
}
