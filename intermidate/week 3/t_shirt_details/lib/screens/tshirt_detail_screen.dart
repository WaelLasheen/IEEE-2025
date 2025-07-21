import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/my_images_path.dart';
import 'package:flutter_application_1/widgets/build_add_to_cart_button.dart';
import 'package:flutter_application_1/widgets/build_detail_row.dart';
import 'package:flutter_application_1/widgets/quantity_selector.dart';
import 'package:flutter_application_1/widgets/rating_selector.dart';
import 'package:flutter_application_1/widgets/size_selector.dart';


class TShirtDetailsScreen extends StatelessWidget {
  const TShirtDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  Container(
                    color: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 20,
                      children: [
                        Expanded(
                          child: Column(
                            spacing: 10,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  MyImagesPath.poloTShirt,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildDot(true),
                                  _buildDot(false),
                                  _buildDot(false),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizeSelector(
                        ),
                      ],
                    ),
                  ),

                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF1E1E1E),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        const Text(
                          'Belgium EURO',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          '20/21 Away by Adidas',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [RatingSelector(), QuantitySelector()],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        BuildDetailRow(title: 'Material:', value: 'Polyester'),
                        BuildDetailRow(
                          title: 'Shipping:',
                          value: '5 to 6 Days',
                        ),
                        BuildDetailRow(
                          title: 'Shipping:',
                          value: 'Within 20 Days',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          BuildAddToCartButton(),
        ],
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.red : Colors.grey,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}
