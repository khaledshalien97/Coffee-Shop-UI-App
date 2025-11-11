import 'package:coffee_shop_mobile_app/constans/colors.dart';
import 'package:coffee_shop_mobile_app/screens/widgets/common_text_field.dart';
import 'package:flutter/cupertino.dart';

Row headerWithSeeMore(String header) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      commonTextWidget(
        text: header,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.whiteColor,
      ),
      commonTextWidget(
        text: "See more",
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: const Color(0xFFFFFFFF).withOpacity(0.33),
      ),
    ],
  );
}
