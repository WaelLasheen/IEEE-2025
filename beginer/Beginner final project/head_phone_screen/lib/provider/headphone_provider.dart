import 'package:flutter/material.dart';
import 'package:head_phone_screen/core/image_manager.dart';

class HeadphoneProvider extends ChangeNotifier {
  int _currentColorIndex = 0;
  int _currentSelectedIndex = 0;
  bool _isFavorite = false;

  final List<List<String>> _headphoneImages = [
    [ImageManager.blackCover, ImageManager.blackFront, ImageManager.blackSide],
    [ImageManager.brownCover, ImageManager.brownFront, ImageManager.brownSide],
    [
      ImageManager.silverCover,
      ImageManager.silverFront,
      ImageManager.silverSide
    ],
  ];

  final ValueNotifier<int> colorIndexNotifier = ValueNotifier<int>(0);
  final ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);
  final ValueNotifier<bool> favoriteNotifier = ValueNotifier<bool>(false);

  int get currentColorIndex => _currentColorIndex;
  int get currentSelectedIndex => _currentSelectedIndex;
  bool get isFavorite => _isFavorite;

  String get currentImage =>
      _headphoneImages[_currentColorIndex][_currentSelectedIndex];
  List<String> get currentColorImages => _headphoneImages[_currentColorIndex];

  void setColorIndex(int index) {
    if (index != _currentColorIndex) {
      _currentColorIndex = index;
      colorIndexNotifier.value = index;
      notifyListeners();
    }
  }

  void setSelectedIndex(int index) {
    if (index != _currentSelectedIndex) {
      _currentSelectedIndex = index;
      selectedIndexNotifier.value = index;
      notifyListeners();
    }
  }

  void toggleFavorite() {
    _isFavorite = !_isFavorite;
    favoriteNotifier.value = _isFavorite;
    notifyListeners();
  }
}
