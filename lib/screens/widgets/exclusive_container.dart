import 'package:coffee_shop_mobile_app/constans/colors.dart';
import 'package:coffee_shop_mobile_app/data/model.dart';
import 'package:coffee_shop_mobile_app/screens/details_screen/details_screen.dart';
import 'package:coffee_shop_mobile_app/screens/widgets/common_text_field.dart';
import 'package:coffee_shop_mobile_app/screens/widgets/start.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExclusiveContainer extends StatelessWidget {
  const ExclusiveContainer({super.key});

  @override
  Widget build(BuildContext context) {
    List<Coffee> coffeeList = Coffee.coffeeList;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: coffeeList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),));
                
            },
            child: Container(
              margin: EdgeInsets.only(right: 10, bottom: 2),
              padding: EdgeInsets.all(10),
              width: 350,
              height: 170,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff383737), Color(0xff111010)],
                ),
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.1),
                    blurRadius: 12,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
            
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      coffeeList[index].imageURL,
                      width: 140,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        commonTextWidget(
                          text: coffeeList[index].coffeeName,
                          fontSize: 24,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                        commonTextWidget(
                          text: coffeeList[index].decription,
                          fontSize: 15,
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                        ),
                        const SizedBox(height: 10),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Stars(rating: 4),
                                  SizedBox(width: 5),
                                  Text(
                                    coffeeList[index].rating.toString(),
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
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
                                  child: SvgPicture.asset(
                                    "asset/svg_images/Cart.svg",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
