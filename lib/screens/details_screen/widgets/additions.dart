import 'package:coffee_shop_mobile_app/constans/colors.dart';
import 'package:coffee_shop_mobile_app/screens/widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Column additionsAndPrice() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(height: 30),
      Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xff1A1A1D),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("asset/svg_images/coffee.svg"),
                  commonTextWidget(
                    text: "Coffee",
                    fontSize: 10,
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 5),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xff1A1A1D),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("asset/svg_images/milk.svg"),
                  // SizedBox(height: 3),
                  commonTextWidget(
                    text: "Milk",
                    fontSize: 10,
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 5),
          Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xff1A1A1D),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: commonTextWidget(
                text: "Medium Roasted",
                fontSize: 12,
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 30),
      commonTextWidget(
        text: "Price",
        fontSize: 13,
        color: AppColors.whiteColor.withOpacity(0.5),
        fontWeight: FontWeight.w500,
      ),

      Row(
        children: [
          commonTextWidget(
            text: "\$",
            fontSize: 24,
            color: AppColors.brownColor,
            fontWeight: FontWeight.w500,
          ),
          commonTextWidget(
            text: "4.20",
            fontSize: 24,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    ],
  );
}
