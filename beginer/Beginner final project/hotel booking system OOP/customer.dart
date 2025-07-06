class Customer {
  final int customerId;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;

  Customer({
    required this.customerId,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
  });

  void customerDetails() {
    print('''
        Customer ID: $customerId
        Name: $firstName $lastName
        Email: $email
        Phone: $phone
      ''');
  }
}
