import 'product.dart';
import 'user.dart';

class Order {
  final String id;
  final User user;
  Map<Product, int> products={};
  late DateTime orderDate;
  late double totalAmount;
  late String status;

  Order({required this.id, required this.user}) {
    this.orderDate = DateTime.now();
    this.totalAmount = 0.0;
    this.status = 'Pending';
    _calculateTotalAmount();
  }

  set updateStatus(String newStatus) {
    status = newStatus;
  }

  void addProduct(Product product, int quantity) {
    if (product.stockQuantity >= quantity) {
      products.update(
        product,
        (value) => value + quantity,
        ifAbsent: () => quantity,
      );

      product.decreaseStock(
        quantity,
      ); 

      _calculateTotalAmount();
      print('$quantity x ${product.name} added to order.');
    } else {
      print(
        'Cannot add $quantity of ${product.name} to order. Only ${product.stockQuantity} available.',
      );
    }
  }

  void removeProduct(Product product) {
    if (products.containsKey(product)) {
      int quantity = products[product]!;
      products.remove(product);
      product.increaseStock(
        quantity,
      ); 

      _calculateTotalAmount();
      print('${product.name} removed from order.');
    } else {
      print('${product.name} is not in this order.');
    }
  }

  void _calculateTotalAmount() {
    totalAmount = 0.0;
    products.forEach((product, quantity) {
      totalAmount += product.price * quantity;
    });
  }

  void displayOrderDetails() {
    print('--- Order Details ---');
    print('Order ID: $id');
    print('Customer: ${user.name} (${user.email})');
    print('Order Date: ${orderDate.toLocal()}');
    print('Status: $status');
    print('Products:');
    if (products.isEmpty) {
      print('  No products in this order.');
    } else {
      products.forEach((product, quantity) {
        print(
          '  - ${product.name} (x$quantity) - \$${(product.price * quantity).toStringAsFixed(2)}',
        );
      });
    }
    print('Total Amount: \$${totalAmount.toStringAsFixed(2)}');
    print('---------------------');
  }
}
