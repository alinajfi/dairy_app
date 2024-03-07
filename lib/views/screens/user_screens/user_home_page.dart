import 'package:dairy_app/data/models/grid_item.dart';
import 'package:dairy_app/views/screens/user_screens/dummy_Screen1.dart';
import 'package:dairy_app/views/screens/user_screens/dummy_screen2.dart';
import 'package:dairy_app/views/screens/user_screens/shop_list.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

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
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(onTap: () {}, child: const Icon(Icons.home)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShopList()));
                },
                child: const Icon(Icons.add_business_outlined)),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DummyScreen1()));
                },
                child: const Icon(Icons.favorite)),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DummyScreen2()));
                },
                child: const Icon(Icons.person)),
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
          Flexible(
            child: ListView.builder(
              itemCount: gridItems.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final gridItem = gridItems[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ShopList()));
                    },
                    child: Container(
                      height: screenHeight * 0.07,
                      width: screenWidth * 0.15,
                      decoration: const BoxDecoration(
                        color: Colors.purpleAccent,
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
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )),
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
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1.0,
              ),
              itemCount: gridItems.length,
              itemBuilder: (context, index) {
                final gridItem = gridItems[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ShopList()));
                    },
                    child: Container(
                      height: screenHeight * 0.07,
                      width: screenWidth * 0.15,
                      decoration: const BoxDecoration(
                        color: Colors.indigo,
                      ),
                      child: Center(
                          child: Align(
                        alignment: Alignment.topCenter,
                        child: Row(
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
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )),
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
