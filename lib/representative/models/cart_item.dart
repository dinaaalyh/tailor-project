class CartItem {
  final String title;
  final String image;     // url atau asset path
  final String size;
  final String colorName;
  final int price;        // rupiah
  bool checked;
  int qty;

  CartItem({
    required this.title,
    required this.image,
    required this.size,
    required this.colorName,
    required this.price,
    this.checked = true,
    this.qty = 1,
  });
}
