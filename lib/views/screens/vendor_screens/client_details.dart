import 'package:dairy_app/data/models/grid_item.dart';
import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/widgets/app_button.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

class ClientDetails extends StatelessWidget {
  ClientDetails({super.key});
  final List<GridItem> gridItems = [
    GridItem(imagePath: 'assets/circle_cow1.png', text: 'Malik Dairy'),
    GridItem(imagePath: 'assets/circle_cow.png', text: 'ali Dairy'),
    GridItem(imagePath: 'assets/circle_cow1.png', text: 'Malik Dairy'),
    GridItem(imagePath: 'assets/circle_cow.png', text: 'ali Dairy'),
    GridItem(imagePath: 'assets/circle_cow1.png', text: 'Malik Dairy'),
    GridItem(imagePath: 'assets/circle_cow.png', text: 'ali Dairy'),
    GridItem(imagePath: 'assets/circle_cow1.png', text: 'Malik Dairy'),
    GridItem(imagePath: 'assets/circle_cow.png', text: 'ali Dairy'),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusableSizedBox(height: screenHeight * 0.030),
            Container(
              height: screenHeight * 0.10,
              width: screenWidth,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  CustomText(
                    text: 'Client Details',
                    color: AppColors.black,
                    size: 22,
                    FontWeight: FontWeight.bold,
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    radius: 50,
                  ),
                ],
              ),
            ),
            ReusableSizedBox(height: screenHeight * 0.030),
            Center(
              child: Column(
                children: [
                  CustomText(
                    text: 'Ali najfi',
                    color: AppColors.black,
                    FontWeight: FontWeight.bold,
                    size: 25,
                  ),
                  CustomText(
                    text: 'orderd 10 minutes ago',
                    color: AppColors.black,
                    size: 18,
                  ),
                ],
              ),
            ),
            CustomText(
              text: 'Location:',
              color: AppColors.black,
              size: 20,
              FontWeight: FontWeight.bold,
            ),
            CustomText(
              text: 'ABC Address',
              color: AppColors.black,
              size: 20,
            ),
            ReusableSizedBox(height: screenHeight * 0.030),
            CustomText(
              text: 'Product type:',
              color: AppColors.black,
              size: 20,
              FontWeight: FontWeight.bold,
            ),
            CustomText(
              text: 'Diry',
              color: AppColors.black,
              size: 20,
            ),
            ReusableSizedBox(height: screenHeight * 0.010),
            const Divider(
              indent: 20.0,
              endIndent: 20.0,
            ),
            ReusableSizedBox(height: screenHeight * 0.010),
            CustomText(
              text: "Client's Selection:",
              color: AppColors.black,
              size: 20,
              FontWeight: FontWeight.bold,
            ),
            Flexible(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 6,
                ),
                itemCount: gridItems.length,
                itemBuilder: (context, index) {
                  final gridItem = gridItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: screenHeight * 0.007,
                      width: screenWidth * 0.15,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Row(
                        children: [
                          Image.asset(
                            gridItem.imagePath,
                            height: screenHeight * 0.09,
                            width: screenHeight * 0.09,
                          ),
                          const Spacer(),
                          Container(
                            height: screenHeight * 0.090,
                            width: screenWidth * 0.15,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  gridItem.text,
                                  //    gridItem[index],
                                  style: const TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                const CustomText(
                                  text: 'Rs 350',
                                  color: Color(0xFF000000),
                                  size: 15,
                                  FontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                CustomText(
                  text: 'Total Price',
                  color: AppColors.black,
                  size: 20,
                  FontWeight: FontWeight.bold,
                ),
                const Spacer(),
                Container(
                  height: screenHeight * 0.050,
                  width: screenWidth * 0.20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.purple,
                  ),
                  alignment: Alignment.center,
                  child:
                      const CustomText(text: 'Rs 20000', color: Colors.white),
                )
              ],
            ),
            Center(
              child: AppButton(
                text: 'Accept Client',
                onPressed: () {},
                backgroundColor: AppColors.purple,
                textColor: Colors.white,
                borderRadius: 20,
                height: screenHeight * 0.060,
                width: screenWidth * 0.50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
