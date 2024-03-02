import 'package:dairy_app/views/screens/user_screens/user_signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'Fresh',
        body: 'Discription',
        image: Center(
          child: Image.asset('assets/circle_cow.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold))),
    PageViewModel(
        title: 'Production',
        body: 'Discription',
        image: Center(
          child: Image.asset('assets/cowdp.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold))),
    PageViewModel(
        title: 'Quality',
        body: 'Discription',
        image: Center(
          child: Image.asset('assets/dairy_quality.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        dotsDecorator: const DotsDecorator(
          activeColor: Color(0xFF332749),
          size: Size(10, 10),
          activeSize: Size.square(15),
        ),
        showDoneButton: true,
        done: const Text(
          'Done',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF332749),
          ),
        ),
        showSkipButton: true,
        skip: const Text(
          'skip',
          style: TextStyle(fontSize: 20, color: Color(0xFF332749)),
        ),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          size: 20,
          color: Color(0xFF332749),
        ),
        onDone: () => onDone(context),
      ),
    );
  }

  void onDone(context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => UserSignupScreen()));
  }
}
