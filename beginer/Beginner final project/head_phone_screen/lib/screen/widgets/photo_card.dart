import 'package:flutter/material.dart';
import 'package:head_phone_screen/provider/headphone_provider.dart';
import 'package:provider/provider.dart';

class PhotoCard extends StatelessWidget {
  final String image;
  final GestureTapCallback onTap;
  final int index;
  const PhotoCard({
    super.key,
    required this.image,
    required this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HeadphoneProvider>(context, listen: false);
    return InkWell(
      onTap: onTap,
      child: ValueListenableBuilder<int>(
        valueListenable: provider.selectedIndexNotifier,
        builder: (BuildContext context, value, __) => ValueListenableBuilder(
          valueListenable: provider.colorIndexNotifier,
          builder: (BuildContext context, _, __) => Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: provider.currentSelectedIndex == index
                    ? Colors.red
                    : Colors.grey,
              ),
              image: DecorationImage(image: AssetImage(image)),
            ),
          ),
        ),
      ),
    );
  }
}
