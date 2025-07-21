class User {
  final String id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  void displayUserInfo() {
    print('User ID: $id');
    print('Name: $name');
    print('Email: $email');
  }
}
