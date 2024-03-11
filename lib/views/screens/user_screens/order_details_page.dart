import 'package:dairy_app/views/screens/user_screens/checkout_page.dart';
import 'package:dairy_app/views/widgets/app_button.dart';
import 'package:dairy_app/views/widgets/custom_text.dart';
import 'package:dairy_app/views/widgets/reuseable_sizedBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OrderDetailsPage extends StatelessWidget {
  OrderDetailsPage({super.key});

  static const String routeName = '/orderDetailsPage';

  final List<String> namesList = [
    'Name1 & Price',
    'Name2 & Price',
    'Name3 & Price',
    'Name4 & Price',
    'Name5 & Price',
    'Name6 & Price',
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusableSizedBox(height: screenHeight * 0.120),
            const CustomText(
              text: 'You Chose Vender Name',
              color: Color(0xFF000000),
              fontWeight: FontWeight.bold,
              size: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: screenHeight * 0.20,
                  width: screenWidth * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/splash.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: screenHeight * 0.20,
                  width: screenWidth * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/login.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const CustomText(
              text: 'Vendor Name',
              color: Color(0xFF000000),
              fontWeight: FontWeight.bold,
              size: 25,
            ),
            const CustomText(
              text: 'Order Details',
              color: Color(0xFF000000),
              size: 22,
            ),
            ReusableSizedBox(height: screenHeight * 0.050),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.35,
                child: ListView.builder(
                  itemCount: namesList.length,
                  itemBuilder: (context, index) {
                    return CustomText(
                      text: namesList[index],
                      color: const Color(0xFF000000),
                      size: 20,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.18),
              child: AppButton(
                text: 'Confirm Order',
                height: screenHeight * 0.060,
                width: screenWidth * 0.60,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CheckoutPage(),
                  ));
                },
                backgroundColor: const Color(0xFF332749),
                textColor: Colors.white,
                borderRadius: 12.0,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
