import 'package:coffee_shop_mobile_app/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldSearchWidget extends StatelessWidget {
  const TextFieldSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "find your coffee...",
        hintStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.white54,
        ),
    
        prefixIcon: Padding(
          padding: EdgeInsetsDirectional.only(start: 12, end: 6),
          child: Icon(
            Icons.search,
            size: 24,
            color: AppColors.whiteColor,
          ),
        ),
        fillColor: Color(0xff1E1F22),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}