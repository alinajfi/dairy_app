import 'package:dairy_app/views/screens/user_screens/order_details_page.dart';
import 'package:dairy_app/views/widgets/app_button.dart';
import 'package:dairy_app/views/widgets/circluar_imageview.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

import '../../../data/models/grid_item.dart';

class VendorProfileDetails extends StatelessWidget {
  VendorProfileDetails({super.key});

  static const String routeName = '/vendorProfileDetails';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              height: screenHeight * 0.20,
              width: screenWidth,
              decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(1),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 1,
                    )
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: screenHeight * 0.20,
                alignment: Alignment.bottomLeft,
                child: CircluarImageView(
                    imageUrl: 'assets/vendor.png',
                    height: screenHeight * 0.15,
                    width: screenHeight * 0.15),
              ),
            ),
            Positioned(
              left: 10,
              child: Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.21, left: screenWidth * 0.30),
                child: const CustomText(
                  text: 'Malik Dairy Shop',
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.bold,
                  size: 25,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.25, left: screenWidth * 0.32),
              child: const CustomText(
                text: 'Vendor details',
                color: Color(0xFF000000),
                size: 20,
              ),
            )
          ]),
          const CustomText(
            text: 'Service Offered',
            color: Color(0xFF000000),
            fontWeight: FontWeight.bold,
            size: 25,
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
                    height: screenHeight / 5,
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
          ReusableSizedBox(height: screenHeight * 0.010),
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
                    child: Center(
                        child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        children: [
                          Image.asset(
                            gridItem.imagePath,
                            height: screenHeight * 0.09,
                            width: screenHeight * 0.09,
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  gridItem.text,
                                  //    gridItem[index],
                                  style: const TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const Flexible(
                                child: CustomText(
                                  text: 'Rs 350',
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ],
                          ),
                          ReusableSizedBox(height: screenHeight * 0.30),
                          const Spacer(),
                          AppButton(
                            text: 'Add to Cart',
                            height: screenHeight * 0.090,
                            width: screenWidth * 0.50,
                            onPressed: () {},
                            backgroundColor: Colors.white70,
                            textColor: const Color(0xFF332749),
                            borderRadius: 20.0,
                            fontSize: 15,
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
            padding: EdgeInsets.only(left: screenWidth * 0.18),
            child: AppButton(
              text: 'Order Now',
              height: screenHeight * 0.060,
              width: screenWidth * 0.60,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => OrderDetailsPage(),
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
    );
  }
}
