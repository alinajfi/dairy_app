import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      required this.color,
      this.size,
      this.maxLines,
      this.fontWeight});
  final String text;
  final Color color;
  final double? size;
  final dynamic fontWeight;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: GoogleFonts.leagueSpartan(
          color: color, fontSize: size, fontWeight: fontWeight),
    );
  }
}
