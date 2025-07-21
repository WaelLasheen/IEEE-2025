class Category {
  final String id;
  final String name;
  final String? description;

  Category({required this.id, required this.name, this.description});

  void displayCategoryInfo() {
    print('Category ID: $id');
    print('Category Name: $name');
    if (description != null) {
      print('Description: $description');
    }
  }
}
