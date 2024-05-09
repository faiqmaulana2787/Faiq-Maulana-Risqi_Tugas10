import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework_10/app/modules/login_screen/views/login_screen_view.dart';
import '../controllers/signin_screen_controller.dart';

class SigninScreenView extends GetView<SigninScreenController> {
  const SigninScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    final registerController = SigninScreenController();
    return Scaffold(
      backgroundColor: const Color(0xFFEEF2FF),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/top_login_screen.png"),
                const Spacer(),
                Image.asset("assets/images/bottom_login_screen.png"),
              ],
            ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Register Your Account", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black)),),
                const SizedBox(height: 15,),
            
                // -- Username
                Text("Username", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),),
                const SizedBox(height: 5,),
                SizedBox(
                  width: double.infinity,
                  height: 41,
                  child: TextFormField(
                    controller: registerController.username,
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
      
                // -- Name
                Text("Name", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),),
                const SizedBox(height: 5,),
                SizedBox(
                  width: double.infinity,
                  height: 41,
                  child: TextFormField(
                    controller: registerController.name,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Name tidak boleh kosong';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Name here...",
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
      
                // -- Address
                Text("Address", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),),
                const SizedBox(height: 5,),
                SizedBox(
                  width: double.infinity,
                  height: 41,
                  child: TextFormField(
                    controller: registerController.address,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Address tidak boleh kosong';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Addess here...",
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
      
                // -- Phone Number
                Text("Phone Number", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),),
                const SizedBox(height: 5,),
                SizedBox(
                  width: double.infinity,
                  height: 41,
                  child: TextFormField(
                    controller: registerController.phoneNumber,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Phone Number tidak boleh kosong';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Phone Number here...",
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
                    controller: registerController.password,
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
                const SizedBox(height: 10,),
      
                // -- Confirm Password
                Text("Confirm Password", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),),
                const SizedBox(height: 5,),
                SizedBox(
                  width: double.infinity,
                  height: 41,
                  child: TextFormField(
                    obscureText: true,
                    controller: registerController.confirmPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Confirm Password tidak boleh kosong';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Confirm Password here...",
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
                    onPressed: () async {
                      String username = registerController.username.text;
                      String name = registerController.name.text;
                      String address = registerController.address.text;
                      String phoneNumber = registerController.phoneNumber.text;
                      String password = registerController.password.text;
                      String confirmPassword = registerController.confirmPassword.text;
      
                      if (registerController.validateInputs(
                        username: username, 
                        name: name, 
                        address: address, 
                        phoneNumber: phoneNumber, 
                        password: password
                      )){
                        if (password != confirmPassword){
                          Get.snackbar("Terjadi kesalahan!", "Password dan Konfirmasi Password berbeda", backgroundColor: Colors.red, colorText: Colors.white);
                        }else{
                          await registerController.registerUser(
                            username, 
                            name, 
                            address, 
                            phoneNumber, 
                            password
                          );
                          Get.snackbar("Registrasi berhasil!", "Akun anda berhasil dibuat. anda dapat melakukan login", backgroundColor: Color(0xFFD567CD), colorText: Colors.white);
                        
                          Get.off(
                            () => LoginScreenView(),
                            transition: Transition.circularReveal,
                            duration: const Duration(seconds: 3),
                          );
                        }
                      }
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
                    child: Text("Register", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white)),)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Already have an account ?", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black)),),
                    TextButton(
                      onPressed: () => Get.off(const LoginScreenView()),
                      child: Text(
                        "Log in",
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