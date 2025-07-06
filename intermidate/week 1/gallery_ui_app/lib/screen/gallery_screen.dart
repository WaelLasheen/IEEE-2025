import 'package:flutter/material.dart';
import 'package:gallery_ui_app/utils/colors_manager.dart';
import 'package:gallery_ui_app/utils/image_paths.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      appBar: AppBar(
        title: const Text(
          'Gallery.',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: ColorsManager.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const Text(
              'Images',
              style: TextStyle(
                fontSize: 20,
                color: ColorsManager.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: AssetsManager.allImages.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      AssetsManager.allImages[index],
                      fit: BoxFit.cover,
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
