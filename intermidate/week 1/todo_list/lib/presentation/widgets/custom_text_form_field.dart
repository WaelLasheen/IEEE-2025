import 'package:flutter/material.dart';
import 'package:todo_list/utils/colors_manager.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String? hint;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    required this.textEditingController,
    required this.hint,
    this.focusNode,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      focusNode: focusNode,
      validator: validator,
      style: const TextStyle(fontSize: 16, color: ColorsManager.black),
      cursorColor: ColorsManager.grey,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 16, color: ColorsManager.grey),
        filled: true,
        fillColor: ColorsManager.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        border: outlineInputBorder(
          color: ColorsManager.greyWithShade300,
          width: 2,
        ),

        enabledBorder: outlineInputBorder(
          color: ColorsManager.greyWithShade300,
          width: 2,
        ),
        focusedBorder: outlineInputBorder(
          color: ColorsManager.greyWithShade300,
          width: 1.5,
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder({
    required Color color,
    required double width,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color, width: width),
    );
  }
}
