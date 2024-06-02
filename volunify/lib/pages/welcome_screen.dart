import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:volunify/pages/loginScreen.dart';
import 'package:volunify/pages/splash_screen.dart';
import 'package:volunify/utils/global_variable.dart';
import 'package:volunify/utils/showsignin.dart';
import 'package:volunify/utils/showsignup.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  var isShown = false;

  Widget buildImage(String image, int index) => SizedBox(
        width: double.infinity,
        child: Image.asset(image,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover),
      );

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider.builder(
            itemCount: GlobalVariables.carouselImageList.length,
            itemBuilder: ((context, index, realIndex) {
              final image = GlobalVariables.carouselImageList[index];
              return buildImage(image, index);
            }),
            options: CarouselOptions(
              // height: double.infinity,
              aspectRatio: MediaQuery.of(context).size.width /
                  MediaQuery.of(context).size.height,
              viewportFraction: 1.0,
              autoPlay: true,
              reverse: false,
            ),
          ),
          Container(
            width: double.infinity,
            height: screensize.height,
            color: Colors.black.withOpacity(0.45),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'asset/logo.png',
                  width: 50,
                  color: GlobalVariables.backgroundColor,
                ),
              )
            ],
          ),
          Positioned(
            top: 350,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Volunify',
                    style: TextStyle(
                        fontSize: screensize.width * 0.14,
                        fontWeight: FontWeight.w900,
                        color: GlobalVariables.backgroundColor,
                        shadows: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.50),
                              blurRadius: 10,
                              spreadRadius: 10)
                        ]),
                  ),
                  Text('Make a different Minute by ',
                      style: TextStyle(
                          fontSize: screensize.width * 0.05,
                          fontWeight: FontWeight.w300,
                          color: GlobalVariables.backgroundColor
                              .withOpacity(0.75))),
                  Text('Minute',
                      style: TextStyle(
                          fontSize: screensize.width * 0.05,
                          fontWeight: FontWeight.w300,
                          color: GlobalVariables.backgroundColor
                              .withOpacity(0.75))),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: isShown == false
                ? Padding(
                    padding: const EdgeInsets.only(top: 550.0),
                    child: SlideAction(
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
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: GlobalVariables.backgroundColor),
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
                                      color: GlobalVariables.backgroundColor,
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
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
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
                      ],
                    ),
                  ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(
                'Privacy policy',
                style: TextStyle(
                    shadows: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.50),
                          blurRadius: 10,
                          spreadRadius: 10)
                    ],
                    fontSize: screensize.width * 0.04,
                    color: GlobalVariables.backgroundColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
