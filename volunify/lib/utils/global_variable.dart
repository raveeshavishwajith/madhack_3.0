import 'package:flutter/material.dart';

// String baseUrl = "http://10.0.2.2:8080"; //when use the windows emulator
String baseUrl =
    "http://192.168.1.39:8080/golumbia_api"; //when use the real mobile as the emulator
// String baseUrl = "http://10.0.2.2:8080/golumbia_api";

class GlobalVariables {
  static const Color backgroundColor = Color(0xffF8FAFC);

  static const Color formbackgroundColor = Color(0xffF0F4F9);
  static const Color lightBlue = Color(0xff1C94CC);

  // static const Color darkBlue = Color.fromRGBO(5, 35, 74, 1);
  static const Color green = Color.fromARGB(255, 86, 180, 95);
  static const Color red = Color.fromARGB(255, 235, 80, 80);
  static const Color gray = Color.fromARGB(255, 178, 172, 172);
  static const Color darkgray = Color.fromARGB(255, 40, 40, 39);
  static const Color yellow = Color.fromARGB(255, 219, 176, 66);
  static const Color darkBlue = Color(0xff041B26); // our
  static const RadialGradient radialGradient = RadialGradient(
    center: Alignment(0.0, -0.53),
    radius: 1.0,
    colors: [
      lightBlue,
      darkBlue,
    ],
    stops: [-0.5, 0.68],
  );

  static const LinearGradient linearGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      lightBlue,
      darkBlue,
    ],
    stops: [0.0, 0.68],
  );

  static final carouselImageList = [
    './asset/b1.jpg',
    './asset/b2.jpeg',
    './asset/b3.jpg',
    // './assets/b4.jpeg',
    // './assets/b5.jpeg',
  ];
}
