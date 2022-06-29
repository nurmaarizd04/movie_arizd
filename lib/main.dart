import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_arizd/module/home/view/home_page.dart';
import 'package:movie_app_arizd/module/main_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }));
}
