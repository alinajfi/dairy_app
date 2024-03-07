import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/screens/vendor_screens/current_orders.dart';
import 'package:dairy_app/views/screens/vendor_screens/product_list.dart';
import 'package:dairy_app/views/widgets/app_button.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

class VendorFirstPage extends StatelessWidget {
  const VendorFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusableSizedBox(height: screenHeight * 0.10),
            CustomText(
              text: 'Welcome back\nABC',
              color: AppColors.black,
              size: 25,
              FontWeight: FontWeight.bold,
            ),
            ReusableSizedBox(height: screenHeight * 0.020),
            CustomText(
              text: 'Remaining Steps',
              color: AppColors.black,
              size: 20,
            ),
            ReusableSizedBox(height: screenHeight * 0.020),
            CustomText(
              text: "Here's what you need to do to set up your account.",
              color: AppColors.black,
              size: 20,
            ),
            ReusableSizedBox(height: screenHeight * 0.020),
            Container(
              height: screenHeight * 0.18,
              width: screenWidth,
              decoration: BoxDecoration(
                color: AppColors.lightPurple,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Recommended next step',
                      color: AppColors.black,
                      size: 18,
                    ),
                    ReusableSizedBox(height: screenHeight * 0.020),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CustomText(
                              text: 'List your products',
                              color: AppColors.black,
                              size: 20,
                              FontWeight: FontWeight.bold,
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductList()));
                                },
                                icon: const Icon(
                                    Icons.arrow_circle_right_outlined))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ReusableSizedBox(height: screenHeight * 0.1),
            Center(
              child: AppButton(
                text: "Booking Requests!",
                backgroundColor: Colors.limeAccent,
                textColor: AppColors.black,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CurrentOrders()));
                },
                height: screenHeight * 0.080,
                width: screenWidth * 0.60,
                borderRadius: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}
