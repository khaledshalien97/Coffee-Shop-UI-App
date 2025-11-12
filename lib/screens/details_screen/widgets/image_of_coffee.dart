  import 'package:coffee_shop_mobile_app/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Stack imageOfCoffee(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 420,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(29),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("asset/images/coffee_3.jpg"),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.brownColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.brownColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SvgPicture.asset(
                  "asset/svg_images/Vector.svg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }