import 'package:coffee_shop_mobile_app/constans/colors.dart';
import 'package:coffee_shop_mobile_app/screens/widgets/common_text_field.dart';
import 'package:flutter/material.dart';

Column selectSize() {
  return Column(
    children: [
      commonTextWidget(
        text: "Size",
        fontSize: 19,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w500,
      ),
      SizedBox(height: 5),
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: AppColors.brownColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: commonTextWidget(
            text: "S",
            fontSize: 12,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      SizedBox(height: 5),
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Color(0xff1A1A1D),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: commonTextWidget(
            text: "M",
            fontSize: 12,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      SizedBox(height: 5),
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Color(0xff1A1A1D),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: commonTextWidget(
            text: "L",
            fontSize: 12,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ],
  );
}
