import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

import '../../../data/models/grid_item.dart';

class ShopList extends StatelessWidget {
  ShopList({super.key});
  final List<GridItem> gridItems = [
    GridItem(
      imagePath: 'assets/circle_cow1.png',
      text: 'Malik Dairy',
    ),
    GridItem(
      imagePath: 'assets/circle_cow.png',
      text: 'ali Dairy',
    ),
    GridItem(
      imagePath: 'assets/circle_cow1.png',
      text: 'Malik Dairy',
    ),
    GridItem(
      imagePath: 'assets/circle_cow.png',
      text: 'ali Dairy',
    ),
    GridItem(
      imagePath: 'assets/circle_cow1.png',
      text: 'Malik Dairy',
    ),
    GridItem(
      imagePath: 'assets/circle_cow.png',
      text: 'ali Dairy',
    ),
    GridItem(
      imagePath: 'assets/circle_cow1.png',
      text: 'Malik Dairy',
    ),
    GridItem(
      imagePath: 'assets/circle_cow.png',
      text: 'ali Dairy',
    ),
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
            label: 'Vendor',
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
          ReusableSizedBox(height: screenHeight * 0.099),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.01),
            child: const Row(
              children: [
                CustomText(
                  text: 'Select Vendor Below',
                  color: Color(0xFF000000),
                  FontWeight: FontWeight.bold,
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
                  child: Container(
                    height: screenHeight * 0.20,
                    width: screenWidth * 0.40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(gridItem.imagePath),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.indigo,
                    ),
                    child: Center(
                        child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            gridItem.text,
                            //    gridItem[index],
                            style: const TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          const CustomText(
                              text: 'Click For More Details',
                              color: Color(0xFF000000))
                        ],
                      ),
                    )),
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
