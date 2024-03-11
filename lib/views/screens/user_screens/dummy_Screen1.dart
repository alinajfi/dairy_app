import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DummyScreen1 extends StatelessWidget {
  const DummyScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: 'Dummy Screen1',
              color: AppColors.black,
              size: 25,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
