import 'package:dairy_app/utils/constants/colour_contants.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DummyScreen2 extends StatelessWidget {
  const DummyScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: 'Dummy Screen2',
              color: AppColors.black,
              size: 25,
              FontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
