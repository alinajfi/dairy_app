import 'package:dairy_app/views/screens/Login_page.dart';
import 'package:dairy_app/views/screens/Onboarding_Screen.dart';
import 'package:dairy_app/views/screens/Splash_Screen.dart';
import 'package:dairy_app/views/screens/User_signup_screen.dart';
import 'package:dairy_app/views/screens/Vendor_signup_screen.dart';
import 'package:dairy_app/views/screens/user_login_signup.dart';
import 'package:dairy_app/views/screens/signup_screen.dart';
import 'package:dairy_app/views/screens/user_homePage.dart';
import 'package:dairy_app/views/screens/vendor_login_signup.dart';
import 'package:dairy_app/views/widgets/resueableListScroll.dart';
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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: UserHomePage(),
    );
  }
}
