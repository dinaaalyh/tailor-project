// product.dart
import 'package:tailor_project/utils/assets.gen.dart';

class Product {
  final int id;
  final AssetGenImage image;
  final String name;
  final int price;
  final String? description;

  Product({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    this.description,
  });
}

