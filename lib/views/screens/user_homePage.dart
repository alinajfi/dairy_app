import 'package:dairy_app/views/widgets/circluar_imageview.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

import '../../data/models/grid_item.dart';
import 'user_screens/shop_list.dart';

// ignore: must_be_immutable
class UserHomePage extends StatelessWidget {
  UserHomePage({super.key});

  static const routeName = '/userHomePage';

  final List<GridItem> gridItems = [
    GridItem(imagePath: 'assets/circle_cow1.png', text: 'Malik Dairy'),
    GridItem(imagePath: 'assets/circle_cow.png', text: 'Ali Dairy'),
    GridItem(imagePath: 'assets/circle_cow1.png', text: 'Malik Dairy'),
    GridItem(imagePath: 'assets/circle_cow.png', text: 'Ali Dairy'),
    GridItem(imagePath: 'assets/circle_cow1.png', text: 'Malik Dairy'),

    // Add more items as needed
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
            ReusableSizedBox(height: screenHeight * 0.090),
            SizedBox(
              width: screenWidth,
              height: screenHeight * 0.30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: screenHeight * 0.25,
                    width: screenWidth * 0.80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      "assets/dairy_items.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            ReusableSizedBox(height: screenHeight * 0.005),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.01),
              child: const Row(
                children: [
                  Text(
                    'Nearby You',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ReusableSizedBox(height: screenHeight * 0.010),
            SizedBox(
              height: screenHeight / 7,
              width: screenWidth,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: gridItems.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final gridItem = gridItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: screenHeight * 0.5,
                      width: screenWidth * 0.15,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ShopList(),
                          ));
                        },
                        child: Column(
                          children: [
                            CircluarImageView(
                                imageUrl: gridItem.imagePath,
                                height: screenHeight * 0.06,
                                width: screenHeight * 0.06),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              gridItem.text,
                              //    gridItem[index],
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.01),
              child: const Row(
                children: [
                  Text(
                    'Explore More',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ReusableSizedBox(height: screenHeight * 0.010),
            Flexible(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  mainAxisExtent: screenHeight * 0.12,
                ),
                itemCount: gridItems.length,
                itemBuilder: (context, index) {
                  final gridItem = gridItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ShopList(),
                        ));
                      },
                      child: Container(
                        height: screenHeight * 0.07,
                        width: screenWidth * 0.15,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: screenHeight * 0.10,
                              width: screenWidth * 0.18,
                              child: Image.asset(
                                gridItem.imagePath,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(width: screenHeight * 0.01),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: screenHeight * 0.012,
                                ),
                                Text(
                                  gridItem.text,
                                  style: const TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 15,
                                  ),
                                ),
                                const CustomText(
                                  text: 'Details',
                                  color: Color(0xFF000000),
                                  size: 15,
                                )
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
          ],
        ),
      ),
    );
  }
}
