import 'package:dairy_app/data/models/grid_item.dart';
import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/widgets/app_button.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  CheckoutPage({super.key});

  final TextEditingController AddressContr0ller = TextEditingController();
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.45),
              child: const CustomText(
                  text: 'Checkout',
                  FontWeight: FontWeight.bold,
                  size: 20,
                  color: Color(0xFF000000)),
            ),
            ReusableSizedBox(height: screenHeight * 0.040),
            const CustomText(
                text: 'My Orders',
                FontWeight: FontWeight.bold,
                color: Color(0xFF000000)),
            ReusableSizedBox(height: screenHeight * 0.040),
            SizedBox(
              height: screenHeight / 3,
              width: screenWidth,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: gridItems.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final gridItem = gridItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: screenHeight / 6,
                      width: screenWidth * 0.15,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(
                              gridItem.imagePath,
                              height: screenHeight * 0.18,
                              width: screenHeight * 0.18,
                            ),
                            SizedBox(width: screenWidth * 0.03),
                            Column(
                              children: [
                                Text(
                                  gridItem.text,
                                  //    gridItem[index],
                                  style: const TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 12,
                                  ),
                                ),
                                const CustomText(
                                    text: 'Rs 350', color: Color(0xFF000000))
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.delete)),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.remove),
                                      onPressed: () {
                                        // Handle decrementing quantity
                                      },
                                    ),
                                    CustomText(
                                        text: '1', color: AppColors.black),
                                    IconButton(
                                      icon: const Icon(Icons.add),
                                      onPressed: () {
                                        // Handle incrementing quantity
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            ReusableSizedBox(height: screenHeight * 0.020),
            CustomText(
                text: 'My Address',
                FontWeight: FontWeight.bold,
                color: AppColors.black),
            ReusableSizedBox(height: screenHeight * 0.020),
            Flexible(
              child: TextFormField(
                controller: AddressContr0ller,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.home),
                    hintText: 'Enter Address',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            ReusableSizedBox(height: screenHeight * 0.020),
            CustomText(
              text: 'Order Info',
              color: AppColors.black,
              FontWeight: FontWeight.bold,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.15,
                  width: screenWidth,
                  child: ListView(
                    shrinkWrap: true,
                    itemExtent: 220,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: screenHeight * 0.32,
                              color: Colors.white,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: 'Item Name',
                                      color: AppColors.black),
                                  const Spacer(),
                                  CustomText(
                                      text: "Rs 350", color: AppColors.black),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'Total',
                      color: AppColors.black,
                      FontWeight: FontWeight.bold,
                      size: 20,
                    ),
                    const Spacer(),
                    CustomText(
                      text: 'Rs 350',
                      color: AppColors.black,
                      FontWeight: FontWeight.bold,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.18),
              child: AppButton(
                text: 'Checkout',
                height: screenHeight * 0.060,
                width: screenWidth * 0.60,
                onPressed: () {},
                backgroundColor: const Color(0xFF332749),
                textColor: Colors.white,
                borderRadius: 12.0,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
