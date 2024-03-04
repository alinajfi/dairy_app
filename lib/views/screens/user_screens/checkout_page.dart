import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.40),
            child: const CustomText(
                text: 'Checkout',
                FontWeight: FontWeight.bold,
                size: 20,
                color: Color(0xFF000000)),
          ),
          ReusableSizedBox(height: screenHeight * 0.040)
        ],
      ),
    );
  }
}
