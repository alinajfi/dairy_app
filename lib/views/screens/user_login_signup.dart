import 'package:dairy_app/views/widgets/app_button.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

class UserLoginSignup extends StatelessWidget {
  const UserLoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
                child: Image(image: AssetImage('assets/circle_cow.png'))),
            ReusableSizedBox(height: screenHeight * 0.080),
            CustomText(
              text: 'Get your Dairy Products\n     From Trustworthy',
              color: const Color(0xFF332749),
              size: screenHeight * 0.04,
              FontWeight: FontWeight.bold,
            ),
            ReusableSizedBox(height: screenHeight * 0.099),
            AppButton(
              text: 'Log in',
              height: screenHeight * 0.090,
              width: screenWidth * 0.70,
              onPressed: () {},
              backgroundColor: const Color(0xFF332749),
              textColor: Colors.white,
              borderRadius: 20.0,
              fontSize: 10,
            ),
            ReusableSizedBox(height: screenHeight * 0.020),
            AppButton(
              text: 'Sign Up',
              height: screenHeight * 0.090,
              width: screenWidth * 0.70,
              onPressed: () {},
              backgroundColor: Colors.white70,
              textColor: const Color(0xFF332749),
              borderRadius: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
