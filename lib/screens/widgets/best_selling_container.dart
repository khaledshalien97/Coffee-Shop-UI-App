import 'package:coffee_shop_mobile_app/constans/colors.dart';
import 'package:coffee_shop_mobile_app/data/model.dart';
import 'package:coffee_shop_mobile_app/screens/widgets/common_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BestSellingContainer extends StatelessWidget {
  const BestSellingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    List<Coffee> coffeeList = Coffee.coffeeList;
    return Container(
      height: 270,
      margin: EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: coffeeList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 10, bottom: 2),
            width: 180,
            height: 280,
            padding: EdgeInsets.all(10),

            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff383737), Color(0xff111010)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.1),
                  blurRadius: 12,
                  offset: const Offset(0, 1),
                ),
              ],
              borderRadius: BorderRadius.circular(29),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.asset(
                        coffeeList[index].imageURL,
                        height: 155,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 4,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 4,
                        ),
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
                            Icon(
                              Icons.star,
                              color: AppColors.brownColor,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            commonTextWidget(
                              text: coffeeList[index].rating.toString(),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: AppColors.whiteColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                commonTextWidget(
                  text: coffeeList[index].coffeeName,
                  fontSize: 15,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 5),
                commonTextWidget(
                  text: coffeeList[index].decription,
                  fontSize: 12,
                  color: Colors.white70,
                  fontWeight: FontWeight.w400,
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$ ",
                          style: TextStyle(
                            color: AppColors.brownColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          coffeeList[index].price.toString(),
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.brownColor,
                          ),
                          child: SvgPicture.asset(
                            "asset/svg_images/Vector.svg",
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.brownColor,
                          ),
                          child: SvgPicture.asset("asset/svg_images/Cart.svg"),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
