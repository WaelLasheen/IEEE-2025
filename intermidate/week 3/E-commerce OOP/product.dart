import 'category.dart'; 

class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final Category category;
  int stockQuantity;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.stockQuantity,
    required this.category,
  });

  void displayProductInfo() {
    print('Product ID: $id');
    print('Name: $name');
    print('Description: $description');
    print('Price: \$${price.toStringAsFixed(2)}');
    print('Stock: $stockQuantity');
    print('Category: ${category.name}');
  }

  void decreaseStock(int quantity) {
    if (stockQuantity >= quantity) {
      stockQuantity -= quantity;
      print(
        '$quantity units of $name removed from stock. Remaining stock: $stockQuantity',
      );
    } else {
      print('Not enough stock for $name. Available: $stockQuantity');
    }
  }

  void increaseStock(int quantity) {
    stockQuantity += quantity;
    print(
      '$quantity units of $name added to stock. Total stock: $stockQuantity',
    );
  }
}
