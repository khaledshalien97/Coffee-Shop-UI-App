import 'package:coffee_shop_mobile_app/constans/colors.dart';
import 'package:coffee_shop_mobile_app/screens/widgets/common_text_field.dart'
    show commonTextWidget;
import 'package:flutter/material.dart';

Row nameAndStar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          commonTextWidget(
            text: "Cappuccino",
            fontSize: 28,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 5),
          commonTextWidget(
            text: "With Oat Milk",
            fontSize: 18,
            color: AppColors.whiteColor.withOpacity(0.6),
            fontWeight: FontWeight.w300,
          ),
        ],
      ),

      Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff383737), Color(0xff111010)],
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Icon(Icons.star, color: AppColors.brownColor, size: 25),
            SizedBox(width: 5),
            commonTextWidget(
              text: "4.5",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor,
            ),
          ],
        ),
      ),
    ],
  );
}
