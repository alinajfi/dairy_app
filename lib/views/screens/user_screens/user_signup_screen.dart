import 'package:dairy_app/views/screens/user_screens/Login_page.dart';
import 'package:dairy_app/views/widgets/app_button.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_formfeild.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';

class UserSignupScreen extends StatelessWidget {
  UserSignupScreen({super.key});

  static const String routeName = '/userSignUpScreen';

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            physics: MediaQuery.of(context).viewInsets.bottom > 0
                ? const BouncingScrollPhysics()
                : const NeverScrollableScrollPhysics(),
            child: SizedBox(
              width: screenWidth,
              height: screenHeight * 0.95,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Welcome!',
                    color: Colors.black,
                    size: screenHeight * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: 'Create an account',
                    color: Colors.black,
                    size: screenHeight * 0.04,
                  ),
                  CustomText(
                    text: '      Email Adress',
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
                  CustomText(
                    text: '    Your Name',
                    color: Colors.black,
                    size: screenHeight * 0.03,
                  ),
                  ReuseableFormfeild(
                    hintText: 'Enter Your Name',
                    icon: Icons.person,
                    controller: nameController,
                  ),
                  CustomText(
                    text: '    Phone Number',
                    color: Colors.black,
                    size: screenHeight * 0.03,
                  ),
                  ReuseableFormfeild(
                    hintText: 'Enter Phone No',
                    icon: Icons.phone,
                    controller: phoneController,
                  ),
                  ReusableSizedBox(height: screenHeight * 0.010),
                  Center(
                    child: AppButton(
                      text: 'Sign Up',
                      height: screenHeight * 0.090,
                      width: screenWidth * 0.70,
                      onPressed: () {},
                      backgroundColor: const Color(0xFF332749),
                      textColor: Colors.white,
                      borderRadius: 20.0,
                      fontSize: 25,
                    ),
                  ),
                  Center(
                      child: CustomText(
                    text: 'Or Sign Up with',
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
                            onPressed: () {},
                            icon: const Icon(Icons.apple_sharp)),
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
                                    builder: (context) => LoginPage()),
                              );
                            },
                            child: const Text(
                              'Log in',
                              style: TextStyle(color: Colors.purple),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
