import 'package:flutter/material.dart';
import 'package:head_phone_screen/screen/widgets/Cover.dart';
import 'package:head_phone_screen/screen/widgets/select_cover.dart';

class PhotoSection extends StatelessWidget {
  const PhotoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SelectCover(),
          Cover(),
        ],
      ),
    );
  }
}
