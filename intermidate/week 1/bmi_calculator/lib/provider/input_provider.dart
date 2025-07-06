import 'package:flutter/material.dart';

class InputProvider with ChangeNotifier {
  Gender _gender = Gender.male;
  int _height = 170;
  int _weight = 80;
  int _age = 20;

  Gender get gender => _gender;
  int get height => _height;
  int get weight => _weight;
  int get age => _age;

  void changeGender() {
    if (_gender == Gender.male) {
      _gender = Gender.female;
    } else {
      _gender = Gender.male;
    }
    notifyListeners();
  }

  void changeHight(double hight) {
    _height = hight.toInt();
    notifyListeners();
  }

  void incrementWeight() {
    _weight++;
    notifyListeners();
  }

  void decrementWeight() {
    if (_weight > 0) {
      _weight--;
      notifyListeners();
    }
  }

  void incrementAge() {
    _age++;
    notifyListeners();
  }

  void decrementAge() {
    if (_age > 0) {
      _age--;
      notifyListeners();
    }
  }

  double calculateBMR() {
    double generalBMR = 10 * _weight + 6.25 * _height - 5 * _age;
    switch (_gender) {
      case Gender.male:
        return generalBMR + 5;
      case Gender.female:
        return generalBMR - 161;
    }
  }

  String bmrCategory() {
    double bmr = calculateBMR();
    if (bmr < 1200) {
      return 'Very Low';
    } else if (bmr >= 1200 && bmr <= 1500) {
      return 'Low';
    } else if (bmr > 1500 && bmr <= 1800) {
      return 'Moderate';
    } else if (bmr > 1800 && bmr <= 2200) {
      return 'High';
    } else {
      return 'Very High';
    }
  }

  String getAdvice(String category) {
    switch (category) {
      case 'Very Low':
        return 'Your BMR is very low. Consult a healthcare professional to ensure your caloric intake supports your basic needs. Consider increasing nutrient-rich foods.';
      case 'Low':
        return 'Your BMR is low. You may need to increase your caloric intake slightly with balanced meals to maintain energy levels.';
      case 'Moderate':
        return 'Your BMR is moderate. Maintain a balanced diet and regular activity to support your energy needs.';
      case 'High':
        return 'Your BMR is high. Ensure you’re consuming enough calories to sustain your activity level and muscle mass.';
      case 'Very High':
        return 'Your BMR is very high. Focus on a high-calorie, nutrient-dense diet to support your metabolic demands.';
      default:
        return 'Maintain a healthy lifestyle with balanced nutrition.';
    }
  }
}

enum Gender {
  male,
  female,
}
