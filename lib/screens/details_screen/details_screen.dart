import 'package:coffee_shop_mobile_app/constans/colors.dart';
import 'package:coffee_shop_mobile_app/screens/details_screen/widgets/additions.dart';
import 'package:coffee_shop_mobile_app/screens/details_screen/widgets/button_add_to_cart.dart';
import 'package:coffee_shop_mobile_app/screens/details_screen/widgets/image_of_coffee.dart';
import 'package:coffee_shop_mobile_app/screens/details_screen/widgets/name_and_star.dart';
import 'package:coffee_shop_mobile_app/screens/details_screen/widgets/select_size.dart';
import 'package:coffee_shop_mobile_app/screens/widgets/common_text_field.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 18),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Image of Coffee
                    imageOfCoffee(context),

                    SizedBox(height: 15),
                    // Name and Star
                    nameAndStar(),
                    // Description
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: commonTextWidget(
                        text:
                            "A cappuccino is a coffee-based drink made primarily from espresso and milk . . . Read more",
                        fontSize: 14,
                        color: AppColors.whiteColor.withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [additionsAndPrice(), selectSize()],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            // Button Add to Cart
            buttonAddCart(),
          ],
        ),
      ),
    );
  }
}
