import 'package:flutter/material.dart';
class PageSize {
  static double width = 0.0;
  static double height = 0.0;




  // Static factory method to get the current device's screen size
  static void fromScreen(BuildContext context) async {
    final Size screenSize = MediaQuery.of(context).size;
    height = screenSize.height;
    width = screenSize.width;
  }
}