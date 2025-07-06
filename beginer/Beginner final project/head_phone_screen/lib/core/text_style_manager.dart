import 'package:flutter/material.dart';

abstract class TextStyleManager {
  static const boldBlack24 = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const semiBoldBlack16 = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const semiBoldBlack20 = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const whiteSemiBold16 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const regular16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const regularDeepGrey16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Color(0xFF424242),
  );
}
