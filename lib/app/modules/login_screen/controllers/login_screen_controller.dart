import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework_10/app/modules/home/views/home_view.dart';

class LoginScreenController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('user');
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> checkCredentials(String username, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: username,
        password: password,
      );
      QuerySnapshot querySnapshot =
          await _userCollection.where('username', isEqualTo: username).get();
      return querySnapshot.docs.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  Future<void> loginValidation() async {
    String username = usernameController.text;
    String password = passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Username and password cannot be empty',
          backgroundColor: Colors.red, colorText: const Color(0xffffffff));
      return;
    }

    bool isValidCredentials = await checkCredentials(username, password);

    if (isValidCredentials) {
      Get.snackbar('Success', 'Login successful',
          backgroundColor: const Color(0xffd567cd), colorText: const Color(0xffffffff));
      Get.off(
        () => const HomeView(),
        transition: Transition.cupertinoDialog,
        duration: const Duration(milliseconds: 500),
      );
    } else {
      Get.snackbar('Error', 'Incorrect username or password',
          backgroundColor: Colors.red, colorText: const Color(0xffffffff));
    }
  }
}
