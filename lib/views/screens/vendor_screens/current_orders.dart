import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/screens/vendor_screens/client_details.dart';
import 'package:dairy_app/views/widgets/app_button.dart';
import 'package:dairy_app/views/widgets/circluar_imageview.dart';
import 'package:dairy_app/views/widgets/custom_btn.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

class CurrentOrders extends StatelessWidget {
  const CurrentOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> clientList = [
      'ALi',
      'Asif',
      'Adeel',
      'naveed',
      'Saif',
      'zaman'
    ];
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenHeight * 0.15,
              width: screenWidth,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  ReusableSizedBox(
                    height: screenHeight * 0.15,
                    width: screenWidth * 0.50,
                  ),
                  const Spacer(),
                  CircluarImageView(
                      imageUrl: "assets/vendor.png",
                      height: screenHeight * 0.060,
                      width: screenHeight * 0.060),
                ],
              ),
            ),
            CustomText(
              text: 'Current Orders',
              color: AppColors.black,
              size: 20,
              fontWeight: FontWeight.bold,
            ),
            ReusableSizedBox(height: screenHeight * 0.025),
            Container(
              clipBehavior: Clip.hardEdge,
              height: screenHeight * 0.30,
              width: screenWidth,
              decoration: BoxDecoration(
                color: AppColors.lightPurple,
              ),
              child: Image.asset(
                "assets/google_map.png",
                fit: BoxFit.fill,
              ),
            ),
            ReusableSizedBox(height: screenHeight * 0.025),
            CustomText(
              text: 'Chose your clients here',
              color: AppColors.black,
              size: 20,
              fontWeight: FontWeight.bold,
            ),
            ReusableSizedBox(height: screenHeight * 0.018),
            Expanded(
              child: ListView.builder(
                itemCount: clientList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  int itemNum = index + 1;
                  clientList.length;
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: screenHeight * 0.12,
                      width: screenWidth,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: '$itemNum.' '${clientList[index]}',
                                color: AppColors.black,
                                size: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              Flexible(
                                child: CustomText(
                                  text: 'Scheme# 33, Main Super Highway',
                                  color: AppColors.black,
                                  maxLines: 2,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CustomButton(
                                text: "Accept",
                                width: screenWidth * 0.20,
                                height: screenHeight * 0.030,
                                bgColor: AppColors.purple,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ClientDetails(),
                                    ),
                                  );
                                },
                              ),
                              // AppButton(
                              //   fontSize: screenHeight * 0.025,
                              //   height: screenHeight * 0.050, // Adjusted size
                              //   width: screenHeight * 0.060, // Adjusted size
                              //   text: '',
                              //   onPressed: () {
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => ClientDetails(),
                              //       ),
                              //     );
                              //   },
                              //   backgroundColor: AppColors.purple,
                              //   textColor: Colors.white,
                              // ),
                              SizedBox(
                                  height: screenHeight *
                                      0.010), // Added SizedBox for spacing
                              // AppButton(
                              //   height: screenHeight * 0.060, // Adjusted size
                              //   width: screenHeight * 0.060, // Adjusted size
                              //   text: '',
                              //   onPressed: () {},
                              //   backgroundColor: AppColors.purple,
                              //   textColor: Colors.white,
                              // ),
                              CustomButton(
                                  width: screenWidth * 0.20,
                                  height: screenHeight * 0.030,
                                  text: "Decline",
                                  bgColor: AppColors.purple),
                            ],
                          )
                        ],
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
