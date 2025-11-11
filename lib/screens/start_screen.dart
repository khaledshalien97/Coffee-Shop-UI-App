import 'package:coffee_shop_mobile_app/constans/colors.dart';
import 'package:coffee_shop_mobile_app/screens/home_screen.dart';
import 'package:coffee_shop_mobile_app/screens/widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF150801), Color(0xFF512813)],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 20,
                spreadRadius: 3,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                top: 50,
                left: 18,
                child: SvgPicture.asset("asset/svg_images/Logo.svg"),
                //  child: Image.asset("asset/images/Logo.png"),
              ),

              Positioned(
                left: 18,
                top: s.height * 0.2,
                right: 24,

                child: Text(
                  "It's\nAlways\nCoffee Time",
                  style: GoogleFonts.anton(
                    fontSize: 60,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFE6D6CE),
                    shadows: [
                      Shadow(
                        blurRadius: 16,
                        color: Colors.brown.withOpacity(0.45),
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                left: 18,
                top: s.height * 0.5,
                right: 18,
                child: SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: Image.asset(
                    "asset/images/splash_image.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              Positioned(
                left: 18,
                top: s.height * 0.85,

                child: SizedBox(
                  width: 140,
                  height: 52,
                  child: SwipeButton(
                    thumb: const Icon(Icons.arrow_forward, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                    activeThumbColor: Colors.white,
                    activeTrackColor: Colors.brown[100]!,

                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: commonTextWidget(
                        text: "Explore",
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.brown,
                      ),
                    ),
                    onSwipe: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),
                ),

                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
