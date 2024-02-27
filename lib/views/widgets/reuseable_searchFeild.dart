import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableSearchField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;

  const ReusableSearchField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon),
      ),
    );
  }
}
