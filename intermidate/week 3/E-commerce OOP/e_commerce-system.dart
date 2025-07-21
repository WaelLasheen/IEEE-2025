import 'user.dart';
import 'category.dart';
import 'product.dart';
import 'order.dart';

class ECommerceSystem {
  List<User> users = [];
  List<Category> categories = [];
  List<Product> products = [];
  List<Order> orders = [];

  void registerUser(User user) {
    users.add(user);
    print('User ${user.name} registered successfully.');
  }

  User? findUserById(String id) {
    try {
      return users.firstWhere((user) => user.id == id);
    } catch (e) {
      return null; // User not found
    }
  }

  void addCategory(Category category) {
    categories.add(category);
    print('Category ${category.name} added.');
  }

  Category? findCategoryById(String id) {
    try {
      return categories.firstWhere((category) => category.id == id);
    } catch (e) {
      return null; // Category not found
    }
  }

  void displayAllCategories() {
    print('\n--- All Categories ---');
    if (categories.isEmpty) {
      print('No categories available.');
      return;
    }

    for (var category in categories) {
      category.displayCategoryInfo();
      print('---');
    }
  }

  void addProduct(Product product) {
    products.add(product);
    print('Product ${product.name} added.');
  }

  Product? findProductById(String id) {
    try {
      return products.firstWhere((product) => product.id == id);
    } catch (e) {
      return null; // Product not found
    }
  }

  void displayAllProducts() {
    print('\n--- All Products ---');
    if (products.isEmpty) {
      print('No products available.');
      return;
    }
    for (var product in products) {
      product.displayProductInfo();
      print('---');
    }
  }

  void createOrder(Order order) {
    orders.add(order);
    print('Order ${order.id} created successfully.');
  }

  Order? findOrderById(String id) {
    try {
      return orders.firstWhere((order) => order.id == id);
    } catch (e) {
      return null; // Order not found
    }
  }

  void displayAllOrders() {
    print('\n--- All Orders ---');
    if (orders.isEmpty) {
      print('No orders available.');
      return;
    }
    for (var order in orders) {
      order.displayOrderDetails();
      print('---');
    }
  }
}