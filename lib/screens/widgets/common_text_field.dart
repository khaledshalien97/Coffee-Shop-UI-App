import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget commonTextWidget({
  String? text,
  double? fontSize,
  Color? color,
  TextOverflow? textoverflow,
  FontWeight? fontWeight,
  TextAlign? textAlign,
}) {
  return Text(
    text!,
    style: GoogleFonts.poppins(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    ),
    overflow: textoverflow,
    textAlign: textAlign,
  );
}
