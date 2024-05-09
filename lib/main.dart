import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      storageBucket: "tugas10lx.appspot.com",
      apiKey: "AIzaSyCohrEVwVLYGqh3xzK75sHgE26LakfALpE", 
      appId: "1:664472525438:android:87b38220c1dc993e38562f",
      messagingSenderId: "664472525438", 
      projectId: "tugas10lx",
    )
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LearningX Chapter 10",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
