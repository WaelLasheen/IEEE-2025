import 'package:bmi_calculator/core/consts/colors_manager.dart';
import 'package:flutter/material.dart';

abstract class TextStyleManager {
  static const TextStyle primaryBold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorsManager.primary,
  );

  static const TextStyle whiteBold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ColorsManager.white,
  );

  static const TextStyle greyBold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorsManager.grey,
  );

  static const TextStyle greyRegular16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: ColorsManager.grey,
  );

  static const TextStyle whiteBold60 = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
    color: ColorsManager.white,
  );

  static const TextStyle whiteBold40 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: ColorsManager.white,
  );

  static const TextStyle whiteBold30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: ColorsManager.white,
  );

  static const TextStyle blackBold28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: ColorsManager.black,
  );
}
