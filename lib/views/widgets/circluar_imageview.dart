import 'package:flutter/material.dart';

class CircluarImageView extends StatelessWidget {
  const CircluarImageView({
    Key? key,
    required this.imageUrl,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String imageUrl;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: height,
      width: width,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: Image.asset(
        imageUrl,
        fit: BoxFit.fill,
      ),
    );
  }
}
