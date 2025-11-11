import 'package:coffee_shop_mobile_app/constans/colors.dart';
import 'package:coffee_shop_mobile_app/screens/widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 370,
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
              ),
              SizedBox(height: 15),
              Row(
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
                      commonTextWidget(
                        text: "With Oat Milk",
                        fontSize: 18,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),

                  Container(
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
              ),

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
                children: [
                  Column(
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
                                  SvgPicture.asset(
                                    "asset/svg_images/coffee.svg",
                                  ),
                                  // SizedBox(height: 3),
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
                  ),
                  Column(
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
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  // icon: const Icon(Icons.shopping_bag_outlined, size: 22),
                  label: commonTextWidget(
                    text: "Add to cart",
                    fontSize: 20,
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w400,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFB87453),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ), // rounded like the shot
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
