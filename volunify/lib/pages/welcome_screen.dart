import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:volunify/pages/loginScreen.dart';
import 'package:volunify/pages/splash_screen.dart';
import 'package:volunify/utils/showsignin.dart';
import 'package:volunify/utils/showsignup.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  var isShown = false;
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'asset/logo.png',
                    width: 50,
                  ),
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Voluntify',
                    style: TextStyle(
                      fontSize: screensize.width * 0.14,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text('Make a different Minute by ',
                      style: TextStyle(
                          fontSize: screensize.width * 0.05,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xff06374F))),
                  Text('Minute',
                      style: TextStyle(
                          fontSize: screensize.width * 0.05,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xff06374F))),
                ],
              ),
            ),
            SizedBox(
              height:
                  !isShown ? screensize.height * 0.15 : screensize.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: isShown == false
                  ? SlideAction(
                      borderRadius: 12,
                      elevation: 0,
                      innerColor: Color(0xff06374F),
                      outerColor: const Color(0xff06374F).withOpacity(0.5),
                      sliderButtonIcon: const Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      onSubmit: () async {
                        isShown = !isShown;
                        setState(() {});
                      },
                      text: 'Slide to unlock',
                      sliderRotate: false,
                      animationDuration: const Duration(milliseconds: 400),
                    )
                  : Column(
                      children: [
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2),
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              width: screensize.width * 0.85,
                              height: screensize.height * 0.07,
                              child: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                      fontSize: screensize.width * 0.06,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                onTap: () {
                                  showModalSignIn(context: context);
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xff1C94CC),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              width: screensize.width * 0.85,
                              height: screensize.height * 0.07,
                              child: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        fontSize: screensize.width * 0.06,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                onTap: () {
                                  showModalSignup(context: context);
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  'Privacy policy',
                  style: TextStyle(
                      fontSize: screensize.width * 0.04,
                      color: Color(0xff2E2E2E)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
