import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/widgets/app_button.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

import '../../widgets/circluar_imageview.dart';
import 'vendor_first_page.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ReusableSizedBox(height: screenHeight * 0.030),
              Container(
                height: screenHeight * 0.10,
                width: screenWidth,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const Spacer(),
                    CircluarImageView(
                        imageUrl: "assets/vendor.png",
                        height: screenHeight * 0.20,
                        width: screenWidth * 0.20)
                  ],
                ),
              ),
              ReusableSizedBox(height: screenHeight * 0.080),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 40,
                        backgroundColor: AppColors.purple,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: screenHeight * 0.08,
                        )),
                    ReusableSizedBox(height: screenHeight * 0.030),
                    CustomText(
                      text: 'Successful',
                      color: AppColors.black,
                      size: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    ReusableSizedBox(height: screenHeight * 0.060),
                    CustomText(
                      text: "Your Client Awaits!\n  Expecting you in",
                      color: AppColors.black,
                      size: 20,
                    ),
                    ReusableSizedBox(height: screenHeight * 0.020),
                    CustomText(
                      text: '24 Hours',
                      color: AppColors.black,
                      size: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    ReusableSizedBox(height: screenHeight * 0.020),
                    CustomText(
                      text:
                          '             Client Selected!\nNow proceed to contact the client',
                      color: AppColors.black,
                      size: 18,
                    ),
                    ReusableSizedBox(height: screenHeight * 0.050),
                    Center(
                      child: AppButton(
                        text: 'Contact Client',
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              VenodrHomePage.routeName,
                              (route) =>
                                  route.settings.name ==
                                  VenodrHomePage.routeName);
                        },
                        backgroundColor: AppColors.purple,
                        textColor: Colors.white,
                        borderRadius: 10,
                        height: screenHeight * 0.060,
                        width: screenWidth * 0.50,
                      ),
                    )
                  ],
                ),
              ),
            ])));
  }
}
