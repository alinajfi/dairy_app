import 'package:dairy_app/views/screens/user_homePage.dart';
import 'package:dairy_app/views/screens/user_screens/user_signup_screen.dart';
import 'package:dairy_app/views/widgets/app_button.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_formfeild.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

import '../vendor_screens/vendor_first_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  static const String routeName = '/loginPage';

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String gotData = "";

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Hello!',
                color: Colors.black,
                size: screenHeight * 0.05,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: 'Welcome back',
                color: Colors.black,
                size: screenHeight * 0.04,
              ),
              ReusableSizedBox(height: screenHeight * 0.020),
              CustomText(
                text: '    Email Adress',
                color: Colors.black,
                size: screenHeight * 0.03,
              ),
              ReuseableFormfeild(
                  hintText: 'Enter Your Email',
                  icon: Icons.mail,
                  controller: emailController),
              CustomText(
                text: '    Password',
                color: Colors.black,
                size: screenHeight * 0.03,
              ),
              ReuseableFormfeild(
                hintText: 'Enter Your Password',
                icon: Icons.key,
                controller: passwordController,
                obscureText: true,
              ),
              ReusableSizedBox(height: screenHeight * 0.010),
              Center(
                child: AppButton(
                  text: 'Log In',
                  height: screenHeight * 0.090,
                  width: screenWidth * 0.70,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserHomePage(),
                    ));
                  },
                  backgroundColor: const Color(0xFF332749),
                  textColor: Colors.white70,
                  borderRadius: 20.0,
                  fontSize: 20,
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forget my passowrd',
                      style: TextStyle(color: Colors.purple)),
                ),
              ),
              ReusableSizedBox(height: screenHeight * 0.12),
              Center(
                  child: CustomText(
                text: 'Or Log In with',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                size: screenHeight * 0.020,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.mail))),
                  Flexible(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook_outlined)),
                  ),
                  Flexible(
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.apple_sharp)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Already have an account?',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    size: screenHeight * 0.020,
                  ),
                  Flexible(
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserSignupScreen()),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.purple),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
