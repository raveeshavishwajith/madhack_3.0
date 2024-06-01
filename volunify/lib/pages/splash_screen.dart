import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:volunify/pages/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:'asset/logo.png' ,
      nextScreen:WelcomeScreen() ,
      splashTransition: SplashTransition.fadeTransition,
      duration: 3500,
      backgroundColor: Colors.white,
      
    );
  }
}