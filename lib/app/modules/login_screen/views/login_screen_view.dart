import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework_10/app/routes/app_pages.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final loginController = LoginScreenController();
    return Scaffold(
      backgroundColor: const Color(0xFFEEF2FF),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image(
              image: AssetImage("assets/images/top_login_screen.png"),
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image(
              image: AssetImage("assets/images/bottom_login_screen.png"),
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Image(
                    image: AssetImage(
                      "assets/icons/login_icon.png"), 
                      alignment: Alignment.center
                  )
                ),
                const SizedBox(height: 15,),
                Text("Welcome To Azalea", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black)),),
                const SizedBox(height: 15,),
            
                // -- Username
                Text("Username", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),),
                const SizedBox(height: 5,),
                SizedBox(
                  width: double.infinity,
                  height: 41,
                  child: TextFormField(
                    controller: loginController.usernameController,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Username tidak boleh kosong';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Username here...",
                      hintStyle: GoogleFonts.plusJakartaSans(fontSize: 13, color: const Color(0xFFD4D4D4)),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD4D4D4))
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
            
                // -- password
                Text("Password", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),),
                const SizedBox(height: 5,),
                SizedBox(
                  width: double.infinity,
                  height: 41,
                  child: TextFormField(
                    obscureText: true,
                    controller: loginController.passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Password tidak boleh kosong';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Password here...",
                      hintStyle: GoogleFonts.plusJakartaSans(fontSize: 13, color: const Color(0xFFD4D4D4)),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD4D4D4))
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 21,),
      
                SizedBox(
                  width: double.infinity,
                  height: 41,
                  child: ElevatedButton(
                    onPressed: () {
                      loginController.loginValidation();
                    } ,
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: const MaterialStatePropertyAll(
                        Color(0xFFD567CD)
                      )
                    ),
                    child: Text("Login", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white)),)),
                ),
                
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Don't have an account ?", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black)),),
                    TextButton(
                      onPressed: () => Get.toNamed(Routes.SIGNIN_SCREEN), 
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF0094FF))
                        ),
                      )
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}