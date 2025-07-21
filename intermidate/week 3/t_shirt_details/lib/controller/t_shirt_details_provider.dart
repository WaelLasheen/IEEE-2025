import 'package:flutter/widgets.dart';

class TShirtDetailsProvider with ChangeNotifier {
  String _selectedSize = 'M';
  int _quantity = 1;
  double _currentRating = 4.0;

  String get selectedSize => _selectedSize;
  int get quantity => _quantity;
  double get currentRating => _currentRating;

  void setSelectedSize(String size) {
    if (_selectedSize != size) {
      _selectedSize = size;
      notifyListeners();
    }
  }

  void increaseQuantity() {
    _quantity++;
    notifyListeners();
  }

  void decreaseQuantity() {
    if (_quantity > 1) {
      _quantity--;
      notifyListeners();
    }
  }

  void setCurrentRating(double rating) {
    if (_currentRating != rating) {
      _currentRating = rating;
      notifyListeners();
    }
  }
}
