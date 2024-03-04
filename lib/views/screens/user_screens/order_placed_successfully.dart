import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/widgets/app_button.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

class OrderPlacedSuccessfully extends StatelessWidget {
  const OrderPlacedSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              ReusableSizedBox(height: screenHeight * 0.09),
              CircleAvatar(
                  backgroundColor: AppColors.purple,
                  child: const Icon(Icons.check, color: Colors.white)),
              ReusableSizedBox(height: screenHeight * 0.05),
              CustomText(
                text: 'Order Placed Successfully',
                color: AppColors.purple,
                FontWeight: FontWeight.bold,
                size: 20,
              ),
              ReusableSizedBox(height: screenHeight * 0.01),
              CustomText(
                text: 'You will recieve your order in 24 hours',
                color: AppColors.purple,
              ),
              CustomText(
                text: '03-04-2024    7:00 PM',
                color: AppColors.purple,
                FontWeight: FontWeight.bold,
              ),
              const CustomText(
                text: 'Thankyou for choosing us !',
                color: Colors.black38,
              ),
              ReusableSizedBox(height: screenHeight * 0.02),
              SizedBox(
                height: screenHeight * 0.03,
                width: screenWidth,
                child: Row(
                  children: [
                    CustomText(text: 'Subtotal', color: AppColors.black),
                    const Spacer(),
                    CustomText(
                      text: 'Rs 350',
                      color: AppColors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
                width: screenWidth,
                child: Row(
                  children: [
                    CustomText(
                        text: 'Delivery Charges', color: AppColors.black),
                    const Spacer(),
                    CustomText(
                      text: 'Rs 100',
                      color: AppColors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
                width: screenWidth,
                child: Row(
                  children: [
                    CustomText(text: 'Extra Fee', color: AppColors.black),
                    const Spacer(),
                    CustomText(
                      text: 'Rs 0',
                      color: AppColors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              const Divider(),
              SizedBox(
                height: screenHeight * 0.03,
                width: screenWidth,
                child: Row(
                  children: [
                    CustomText(text: 'Total', color: AppColors.black),
                    const Spacer(),
                    CustomText(
                      text: 'Rs 450',
                      color: AppColors.black,
                      FontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              ReusableSizedBox(height: screenHeight * 0.020),
              const CustomText(
                  text: 'How was your experience with us',
                  color: Colors.black38),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star_outline_rounded)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star_outline_rounded)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star_outline_rounded)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star_outline_rounded)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star_outline_rounded)),
                ],
              ),
              ReusableSizedBox(height: screenHeight * 0.020),
              AppButton(
                text: 'Save Recept',
                height: screenHeight * 0.060,
                width: screenWidth * 0.60,
                onPressed: () {},
                backgroundColor: const Color(0xFF332749),
                textColor: Colors.white,
                borderRadius: 12.0,
                fontSize: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
