import 'package:flutter/material.dart';

class reuseableFormfeild extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final IconData? suffixIcon;
  final TextEditingController controller;

  const reuseableFormfeild({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.controller,
    this.suffixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .07,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
