import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:head_phone_screen/provider/headphone_provider.dart';

class Cover extends StatelessWidget {
  const Cover({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HeadphoneProvider>(context, listen: false);

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30)),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            ValueListenableBuilder<int>(
              valueListenable: provider.selectedIndexNotifier,
              builder: (context, _, __) {
                return ValueListenableBuilder<int>(
                  valueListenable: provider.colorIndexNotifier,
                  builder: (context, _, __) {
                    return Image.asset(
                      provider.currentImage,
                      fit: BoxFit.cover,
                    );
                  },
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: ValueListenableBuilder<bool>(
                valueListenable: provider.favoriteNotifier,
                builder: (context, isFavorite, _) {
                  return Material(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: InkWell(
                        onTap: () => provider.toggleFavorite(),
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
