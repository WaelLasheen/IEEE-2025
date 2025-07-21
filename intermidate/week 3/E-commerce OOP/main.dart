import 'category.dart';
import 'e_commerce-system.dart';
import 'order.dart';
import 'product.dart';
import 'user.dart';

void main() {
  final ECommerceSystem system = ECommerceSystem();

  print('Initializing E-Commerce System with some data...');

  // Categories
  final Category electronics = Category(id: 'cat001', name: 'Electronics', description: 'Gadgets and electronic devices');
  final Category books = Category(id: 'cat002', name: 'Books', description: 'Fiction and non-fiction books');
  final Category clothing = Category(id: 'cat003', name: 'Clothing', description: 'Apparel for men and women');
  system.addCategory(electronics);
  system.addCategory(books);
  system.addCategory(clothing);

  // Products
  final Product laptop = Product(
    id: 'prod001',
    name: 'Laptop X1',
    description: 'High-performance laptop for professionals',
    price: 1200.00,
    stockQuantity: 10,
    category: electronics,
  );
  final Product novel = Product(
    id: 'prod002',
    name: 'The Great Adventure',
    description: 'An epic fantasy novel',
    price: 15.99,
    stockQuantity: 50,
    category: books,
  );
  final Product tShirt = Product(
    id: 'prod003',
    name: 'Cotton T-Shirt',
    description: 'Comfortable casual t-shirt',
    price: 25.00,
    stockQuantity: 100,
    category: clothing,
  );
  system.addProduct(laptop);
  system.addProduct(novel);
  system.addProduct(tShirt);

  // Users
  final User alice = User(id: 'user001', name: 'Alice Smith', email: 'alice@example.com',);
  final User bob = User(id: 'user002', name: 'Bob Johnson', email: 'bob@example.com');
  system.registerUser(alice);
  system.registerUser(bob);

  print('\nE-Commerce System Ready!\n');

  // --- Simulate User Interactions ---

  // Display available products
  system.displayAllProducts();

  // Alice tries to buy products
  print('\n--- Alice\'s Shopping Session ---');
  Order aliceOrder = Order(id: 'orderA001', user: alice);
  aliceOrder.addProduct(laptop, 1);
  aliceOrder.addProduct(novel, 2);
  aliceOrder.addProduct(tShirt, 3);
  aliceOrder.displayOrderDetails();
  system.createOrder(aliceOrder);

  // Bob tries to buy products
  print('\n--- Bob\'s Shopping Session ---');
  Order bobOrder = Order(id: 'orderB001', user: bob);
  bobOrder.addProduct(laptop, 2);
  bobOrder.addProduct(novel, 1);
  bobOrder.addProduct(novel, 1); 
  bobOrder.removeProduct(novel); 
  bobOrder.displayOrderDetails();
  system.createOrder(bobOrder);

  // Try to buy more than stock
  print('\n--- Testing Stock Limits ---');
  Order testOrder = Order(id: 'orderT001', user: alice);
  testOrder.addProduct(laptop, 10); // Should be fine
  testOrder.addProduct(laptop, 2);  // Should fail (only 9 remaining from previous purchase by alice, then 8 by bob)
  system.createOrder(testOrder);

  // Display updated product stock
  system.displayAllProducts();

  // Display all orders
  system.displayAllOrders();

  // Find a specific order and change its status
  print('\n--- Updating Order Status ---');
  Order? foundOrder = system.findOrderById('orderA001');
  if (foundOrder != null) {
    print('Found order: ${foundOrder.id}. Current status: ${foundOrder.status}');
    foundOrder.status = 'Shipped';
    print('Updated status to: ${foundOrder.status}');
  }

  print('\nProgram Finished.');
}