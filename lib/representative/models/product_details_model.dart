import 'package:tailor_project/utils/assets.gen.dart';

class Product {
  final String id;
  final String name;
  final AssetGenImage image;  
  final int price;
  final String description;// asset path
  final double rating; // 0..5
  final int ratingCount;
  final List<String> sizes;
  bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
    required this.ratingCount,
    this.sizes = const ['XS', 'S', 'M', 'L', 'XL'],
    this.isFavorite = false,
  });
}
