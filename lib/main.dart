import 'package:flutter/material.dart';
import 'package:home/controller_bindings.dart';
import 'package:home/main_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:home/views/wisata.dart';
import 'package:home/views/kategori.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(),
      debugShowCheckedModeBanner: false,
      home: SplashScreenView(
        navigateRoute: MainScreen(),
        duration: 5000,
        imageSize: 130,
        imageSrc: "assets/img/wst.png",
        backgroundColor: Colors.white,
        text: "Penentuan Wisata",
        textType: TextType.TyperAnimatedText,
        textStyle: TextStyle(
          fontSize: 30.0,
        ),
      ),
    );
  }
}
