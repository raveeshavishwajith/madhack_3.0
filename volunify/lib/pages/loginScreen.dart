import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:volunify/utils/showsignupsignin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            child: Text(
              "Sign in",
              style: TextStyle(
                fontSize: screenSize.width * 0.15,
                fontWeight: FontWeight.bold,
                color: Color(0xff021118),
              ),
            ),
            alignment: Alignment.topLeft,
          ),
          Container(
            child: Text(
              "Please login to continue...",
              style: TextStyle(
                  fontSize: screenSize.width * 0.05, color: Color(0xff166C95)),
            ),
            alignment: Alignment.topLeft,
          ),
          Container(
            child: Lottie.network(
                "https://lottie.host/ca3dc9c7-996d-402f-9163-fe103d3601f8/UPYTs92g9T.json"),
          ),
          ElevatedButton(
              onPressed: () {
                showModal(context: context);
              },
              child: Text("Login")),
        ],
      ),
    );
  }
}
