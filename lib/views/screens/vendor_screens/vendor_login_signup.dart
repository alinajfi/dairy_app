import 'package:dairy_app/views/screens/Login_page.dart';
import 'package:dairy_app/views/screens/vendor_screens/Vendor_signup_screen.dart';
import 'package:dairy_app/views/widgets/app_button.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

class VendorLoginSignupScreen extends StatelessWidget {
  const VendorLoginSignupScreen({super.key});
  static const routeName = '/vendorLoginSignUp';

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Quality means doing it right when no one is\nlooking',
                color: const Color(0xFF332749),
                size: screenHeight * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
            ReusableSizedBox(height: screenHeight * 0.099),
            AppButton(
              text: 'Log in',
              height: screenHeight * 0.090,
              width: screenWidth * 0.70,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPageVendor()),
                );
              },
              backgroundColor: const Color(0xFF332749),
              textColor: Colors.white,
              borderRadius: 20.0,
              fontSize: 25,
            ),
            ReusableSizedBox(height: screenHeight * 0.020),
            AppButton(
              text: 'Sign Up',
              height: screenHeight * 0.090,
              width: screenWidth * 0.70,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => VendorSignupScreen()),
                );
              },
              backgroundColor: Colors.white70,
              textColor: const Color(0xFF332749),
              borderRadius: 20.0,
              fontSize: 25,
            )
          ],
        ),
      ),
    );
  }
}
