import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    
    return Scaffold(
      backgroundColor: const Color(0xFFEEF2FF),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 35, top: 90),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello, ${controller.nameController.text}", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black))),
                            Text("How's your day going?", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black))),
                          ],
                        ),
                        Obx(
                          () => controller.imageUrl.value.isEmpty
                          ? ClipOval(
                              child: Container(
                                color: const Color.fromRGBO(220, 220, 220, 1),
                                height: 60,
                                width: 60,
                                child: const Icon(Icons.person,),
                              ),
                            )
                          : ClipOval(
                              child: Image.network(
                                controller.imageUrl.value,
                                height: 50,
                                width: 50,
                              ),
                            ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 3,),
                    const Divider(thickness: 2, color: Color(0xFFD4D4D4)),
                    const SizedBox(height: 18,),
                    Text("My Phone Number : ${controller.phoneNumberController.text}", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black))),
                    Text("My Address : ${controller.addressController.text}", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black))),
                    const SizedBox(height: 200,),
                    Center(
                      child: SizedBox(
                        width: 300,
                        height: 41,
                        child: ElevatedButton(
                          onPressed: () => controller.uploadAndDisplayImage(), 
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(Color(0xFFD567CD)),
                          ),
                          child: Text("Upload Foto", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()), // Expand the column to push content to the top
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: -100,
            child: Image.asset(
              'assets/images/bottom_login_screen.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
