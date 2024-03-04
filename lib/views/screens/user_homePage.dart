import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

import '../../data/models/grid_item.dart';

// ignore: must_be_immutable
class UserHomePage extends StatelessWidget {
  UserHomePage({super.key});

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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Ensures all buttons are visible
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_business_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: Column(
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
                  width: screenWidth * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 1,
                      ),
                    ],
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
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.15,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Image.asset(
                            gridItem.imagePath,
                            height: screenHeight * 0.05,
                            width: screenHeight * 0.05,
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            gridItem.text,
                            //    gridItem[index],
                            style: const TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    )),
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
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
              ),
              itemCount: gridItems.length,
              itemBuilder: (context, index) {
                final gridItem = gridItems[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.15,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.90,
                          width: screenWidth * 0.09,
                          child: Image.asset(
                            gridItem.imagePath,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.050),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                gridItem.text,
                                //    gridItem[index],
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
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
