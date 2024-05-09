import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework_10/app/routes/app_pages.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
      initState: (_){
        Timer(const Duration(seconds: 3), () {
          Get.offAllNamed(Routes.LOGIN_SCREEN);
        });
      },
      builder: (context) {
        return Scaffold(
        backgroundColor: Color(0xFFEEF2FF),
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 200,
                    height: 140,
                    child: Image(
                      image: AssetImage(
                        "assets/logos/Azalea.png"
                      )
                    )
                  ),
                  Text('HELLO FELAS.', style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black)),),
                  Text('Temukan segala jenis bunga\ndari berbagai belahan dunia!', style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black)),),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(image: AssetImage("assets/images/top_splash_screen.png")),
                Image(image: AssetImage("assets/images/bottom_splash_screen.png")),
              ],
            ),
          ],
        ),
      );
      },
    );
  }
}
