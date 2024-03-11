import 'package:dairy_app/data/models/grid_item.dart';
import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/screens/user_screens/order_placed_successfully.dart';
import 'package:dairy_app/views/widgets/app_button.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

import '../../../data/dummy_data/gird_items_list.dart';

class CheckoutPage extends StatelessWidget {
  CheckoutPage({super.key});

  static const String routeName = '/checkoutPage';

  final TextEditingController addressController = TextEditingController();
  final List<GridItem> gridItems = DummyData.myCheckoutItems;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: CustomText(
                    text: 'Checkout',
                    fontWeight: FontWeight.bold,
                    size: screenHeight * 0.035,
                    color: const Color(0xFF000000)),
              ),
              ReusableSizedBox(height: screenHeight * 0.040),
              CustomText(
                  text: 'My Orders',
                  size: screenHeight * 0.030,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF000000)),
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
                        height: screenHeight / 7,
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
                                      const CustomText(
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
                  fontWeight: FontWeight.bold,
                  size: screenHeight * 0.020,
                  color: AppColors.black),
              ReusableSizedBox(height: screenHeight * 0.020),
              Flexible(
                child: TextFormField(
                  controller: addressController,
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
                size: screenHeight * 0.020,
                fontWeight: FontWeight.bold,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.15,
                    width: screenWidth,
                    child: Flexible(
                      child: ListView(
                        shrinkWrap: true,
                        itemExtent: screenHeight * 0.10,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    height: screenHeight * 0.24,
                                    color: Colors.white,
                                    child: const Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                            text: 'Yougurt',
                                            color: AppColors.black),
                                        Spacer(),
                                        CustomText(
                                            text: "Rs 350",
                                            color: AppColors.black),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      CustomText(
                        text: 'Total',
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                        size: 20,
                      ),
                      Spacer(),
                      CustomText(
                        text: 'Rs 350',
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
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
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OrderPlacedSuccessfully(),
                    ));
                  },
                  backgroundColor: const Color(0xFF332749),
                  textColor: Colors.white,
                  borderRadius: 12.0,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
