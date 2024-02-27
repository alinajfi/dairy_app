import 'package:flutter/material.dart';

class ReusableSizedBox extends StatelessWidget {
  final double height;
  final double? width;

  const ReusableSizedBox({Key? key, required this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
