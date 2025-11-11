import 'package:coffee_shop_mobile_app/constans/colors.dart';
import 'package:coffee_shop_mobile_app/screens/details_screen.dart';
import 'package:coffee_shop_mobile_app/screens/widgets/best_selling_container.dart';
import 'package:coffee_shop_mobile_app/screens/widgets/common_text_field.dart';
import 'package:coffee_shop_mobile_app/screens/widgets/exclusive_container.dart';
import 'package:coffee_shop_mobile_app/screens/widgets/header_with_see_more.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget makeCategory({title, index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = index;
        });
      },
      child: AnimatedContainer(
        width: 110,
        duration: Duration(milliseconds: 300),
        child: Center(
          child: commonTextWidget(
            text: title,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: selectedCategory == index
                ? AppColors.brownColor
                : Colors.grey[700],
          ),
        ),
      ),
    );
  }

  List<String> categories = ["Cappuccino", "Espresso", "Latte", "Mocha"];
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("asset/svg_images/Logo.svg"),
                  Image.asset("asset/images/person.png"),
                ],
              ),
              SizedBox(height: 35),
              TextField(
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
              ),
              // List of Category
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                height: 20,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return makeCategory(index: index, title: categories[index]);
                  },
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsScreen()),
                  );
                },
                icon: Icon(Icons.add, color: Colors.white),
              ),
              headerWithSeeMore("Exclusive Offer"),
              ExclusiveContainer(),
              SizedBox(height: 15),
              headerWithSeeMore("Best Selling"),

              BestSellingContainer(),
              headerWithSeeMore("Latest Item"),
              BestSellingContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
