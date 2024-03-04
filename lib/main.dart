import 'package:dairy_app/views/screens/user_homePage.dart';
import 'package:dairy_app/views/screens/user_screens/checkout_page.dart';
import 'package:dairy_app/views/screens/user_screens/order_details_page.dart';
import 'package:dairy_app/views/screens/user_screens/shop_list.dart';
import 'package:dairy_app/views/screens/user_screens/Login_page.dart';
import 'package:dairy_app/views/screens/user_screens/vendor_Profile_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dairy App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: VendorProfileDetails(),
    );
  }
}
