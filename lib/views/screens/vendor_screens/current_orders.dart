import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/widgets/app_button.dart';
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
                  const CircleAvatar(),
                ],
              ),
            ),
            CustomText(
              text: 'Current Orders',
              color: AppColors.black,
              size: 20,
              FontWeight: FontWeight.bold,
            ),
            ReusableSizedBox(height: screenHeight * 0.025),
            Container(
              height: screenHeight * 0.30,
              width: screenWidth,
              decoration: BoxDecoration(
                color: AppColors.lightPurple,
              ),
            ),
            ReusableSizedBox(height: screenHeight * 0.025),
            CustomText(
              text: 'Chose your clients here',
              color: AppColors.black,
              size: 20,
              FontWeight: FontWeight.bold,
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
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: screenHeight * 0.15,
                        width: screenWidth,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                CustomText(
                                  text: '$itemNum.' '${clientList[index]}',
                                  color: AppColors.black,
                                  size: 20,
                                  FontWeight: FontWeight.bold,
                                ),
                                CustomText(
                                    text: 'Adress', color: AppColors.black)
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                AppButton(
                                  text: 'Accept',
                                  onPressed: () {},
                                  backgroundColor: AppColors.purple,
                                  textColor: Colors.white,
                                ),
                                ReusableSizedBox(height: screenHeight * 0.010),
                                AppButton(
                                  text: 'Decline',
                                  onPressed: () {},
                                  backgroundColor: AppColors.purple,
                                  textColor: Colors.white,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
