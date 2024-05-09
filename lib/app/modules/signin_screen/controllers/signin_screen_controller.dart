import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninScreenController extends GetxController {
  final CollectionReference _userCollection =
    FirebaseFirestore.instance.collection('user');
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  // Variables
  final username = TextEditingController();
  final name = TextEditingController();
  final address = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final signInFormKey = GlobalKey<FormState>();

  void clearForm(){
    username.clear();
    name.clear();
    address.clear();
    phoneNumber.clear();
    password.clear();
    confirmPassword.clear();
  }

  Future<bool> isUsernameExists(String username) async {
    QuerySnapshot querySnapshot =
        await _userCollection.where('username', isEqualTo: username).get();
    return querySnapshot.docs.isNotEmpty;
  }

  Future<void> registerUser(String username, String name, String address,
      String phoneNumber, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: username,
        password: password,
      );
      
      String userId = userCredential.user!.uid;

      await _userCollection.doc(userId).set({
        'username': username,
        'name': name,
        'address': address,
        'phoneNumber': phoneNumber,
      });

    } catch (e) {
      Get.snackbar('Error', 'Gagal mendaftarkan pengguna. Silakan coba lagi nanti.', backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  bool validateInputs(
      {required String username,
      required String name,
      required String address,
      required String phoneNumber,
      required String password}) {
    if (username.isEmpty ||
        name.isEmpty ||
        address.isEmpty ||
        phoneNumber.isEmpty ||
        password.isEmpty) {
      Get.snackbar('Error', 'Silakan isi semua kolom', backgroundColor: Colors.red, colorText: Colors.white);
      return false;
    } else if (!isValidEmail(username)) {
      Get.snackbar('Error', 'Silakan masukkan email/username yang valid', backgroundColor: Colors.red, colorText: Colors.white);
      return false;
    } else if (password.length < 8) {
      Get.snackbar('Error', 'Password harus minimal 8 karakter', backgroundColor: Colors.red, colorText: Colors.white);
      return false;
    }
    return true;
  }

  bool isValidEmail(String email) {
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }
}