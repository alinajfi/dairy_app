import 'dart:async';

import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/screens/Onboarding_Screen.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = '/splashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacementNamed(context, OnboardingScreen.routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/splash.png'), fit: BoxFit.fill)),
          ),
          const Center(
              child: CustomText(
            text: "Dairy App",
            color: AppColors.purple,
            size: 84,
          )),
        ],
      ),
    );
  }
}
