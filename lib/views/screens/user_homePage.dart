import 'package:dairy_app/utils/constants/grid_item.dart';
import 'package:dairy_app/views/widgets/reuseable_searchFeild.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserHomePage extends StatelessWidget {
  UserHomePage({super.key});
  final TextEditingController SearchController = TextEditingController();

  final List<GridItem> gridItems = [
    GridItem(imagePath: 'assets/cowdp.png', text: 'Item 1'),
    GridItem(imagePath: 'assets/circle_cow.png', text: 'Item 2'),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
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
                    width: screenWidth * 0.95,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
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
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemCount: gridItems.length,
                itemBuilder: (context, index) {
                  final griditem = gridItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: screenHeight * 0.6,
                      width: screenWidth * 0.12,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                      ),
                      child: const Center(
                          child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          children: [
                            Image(image: AssetImage('assets/cowdp.png')),
                            Text(
                              '',
                              //    gridItem[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      )),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
