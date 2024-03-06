import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> namesList = [
      'Cow Milk',
      'Buffalow Milk',
      'Cow Butter',
      'Buffalow Butter',
      'Yugert',
      'Cream'
    ];
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          ReusableSizedBox(height: screenHeight * 0.050),
          Container(
            height: screenHeight * 0.10,
            width: screenWidth,
            decoration: BoxDecoration(
              color: AppColors.lightPurple,
            ),
            child: Column(
              children: [
                CustomText(
                  text: 'Products',
                  color: AppColors.black,
                  FontWeight: FontWeight.bold,
                  size: 20,
                ),
                CustomText(
                  text: 'Select the Product do you have',
                  color: AppColors.black,
                  size: 18,
                )
              ],
            ),
          ),
          ReusableSizedBox(height: screenHeight * 0.020),
          Expanded(
            child: ListView.builder(
                itemCount: namesList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  namesList.length;
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: screenHeight * 0.080,
                      width: screenWidth,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Row(
                        children: [
                          CustomText(
                            text: namesList[index],
                            color: AppColors.black,
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.arrow_circle_right_outlined))
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}