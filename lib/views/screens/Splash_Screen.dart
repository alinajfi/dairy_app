import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
          Center(
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
