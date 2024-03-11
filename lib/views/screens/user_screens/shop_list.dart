import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/screens/user_screens/vendor_Profile_details.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

import '../../../data/models/grid_item.dart';

class ShopList extends StatelessWidget {
  ShopList({super.key});

  static const String routeName = '/shopList';

  final List<GridItem> gridItems = [
    GridItem(
      imagePath: 'assets/dairy_shop.png',
      text: 'Malik Dairy',
    ),
    GridItem(
      imagePath: 'assets/dairy_shop_tow.png',
      text: 'Ali Dairy',
    ),
    GridItem(
      imagePath: 'assets/dairy_shop.png',
      text: 'Malik Dairy',
    ),
    GridItem(
      imagePath: 'assets/dairy_shop_tow.png',
      text: 'Ali Dairy',
    ),
    GridItem(
      imagePath: 'assets/dairy_shop.png',
      text: 'Malik Dairy',
    ),
    GridItem(
      imagePath: 'assets/dairy_shop_tow.png',
      text: 'Ali Dairy',
    ),
    GridItem(
      imagePath: 'assets/dairy_shop.png',
      text: 'Malik Dairy',
    ),
    GridItem(
      imagePath: 'assets/dairy_shop_tow.png',
      text: 'Ali Dairy',
    ),
    GridItem(
      imagePath: 'assets/dairy_shop.png',
      text: 'Malik Dairy',
    ),
    GridItem(
      imagePath: 'assets/dairy_shop_tow.png',
      text: 'Ali Dairy',
    ),
    GridItem(
      imagePath: 'assets/dairy_shop.png',
      text: 'Malik Dairy',
    ),
    GridItem(
      imagePath: 'assets/dairy_shop.png',
      text: 'Ali Dairy',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ReusableSizedBox(height: screenHeight * 0.099),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.01),
              child: Row(
                children: [
                  CustomText(
                    text: 'Select Vendor Below',
                    size: screenHeight * 0.035,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Flexible(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                ),
                itemCount: gridItems.length,
                itemBuilder: (context, index) {
                  final gridItem = gridItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => VendorProfileDetails(),
                        ));
                      },
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        alignment: Alignment.topLeft,
                        height: screenHeight * 0.20,
                        width: screenWidth * 0.40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey, width: 1),
                          image: DecorationImage(
                              image: AssetImage(gridItem.imagePath),
                              fit: BoxFit.fill,
                              opacity: 0.6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                gridItem.text,
                                style: const TextStyle(
                                    color: AppColors.purple,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              const CustomText(
                                size: 15,
                                text: 'Click For More Details',
                                color: AppColors.purple,
                              )
                            ],
                          ),
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
