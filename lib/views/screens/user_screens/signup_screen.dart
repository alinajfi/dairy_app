import 'package:dairy_app/views/screens/user_screens/user_login_signup.dart';
import 'package:dairy_app/views/screens/vendor_screens/vendor_login_signup.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
        child: Center(
          child: Column(
            children: [
              const Flexible(
                child: CustomText(
                  color: Color(0xFF332749),
                  text: 'Welcome! We’re happy to have you here.'
                      '\n                     Let’s get started:',
                  size: 15,
                ),
              ),
              ReusableSizedBox(height: screenHeight * 0.090),
              const Flexible(
                child: CustomText(
                  text: 'Are you a...',
                  color: Color(0xFF332749),
                  size: 30,
                ),
              ),
              ReusableSizedBox(height: screenHeight * 0.090),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UserLoginSignup()),
                        ),
                        child: CircleAvatar(
                          radius: screenHeight * 0.15,
                          backgroundImage: const AssetImage('assets/user.png'),
                        ),
                      ),
                      ReusableSizedBox(height: screenHeight * 0.020),
                      const CustomText(
                        text: 'User',
                        color: Color(0xFF332749),
                        size: 30,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const VendorLoginSignupScreen()),
                        ),
                        child: CircleAvatar(
                            radius: screenHeight * 0.15,
                            backgroundImage:
                                const AssetImage('assets/vendor.png')),
                      ),
                      ReusableSizedBox(height: screenHeight * 0.020),
                      const CustomText(
                        text: 'Vendor',
                        color: Color(0xFF332749),
                        size: 30,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
