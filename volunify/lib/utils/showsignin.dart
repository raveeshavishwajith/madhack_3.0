import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:volunify/utils/Input_fields.dart';
import 'package:volunify/utils/global_variable.dart';
import 'package:volunify/utils/showsignup.dart';

Future<void> showModalSignIn({required BuildContext context}) async {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  return showModalBottomSheet<void>(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      var screensize = MediaQuery.of(context).size;
      bool obsecureText = true;
      return SingleChildScrollView(
        child: Wrap(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: GlobalVariables.darkBlue,
              ),
              height: 400,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: 25,
                        height: 3,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputField(
                      prefixIcon: Icons.person,
                      labelText: 'Email',
                      obsecureText: false,
                      textEditingController: _emailController,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputField(
                      prefixIcon: Icons.lock,
                      labelText: 'Password',
                      obsecureText: obsecureText ? true : false,
                      textEditingController: _passwordController,
                      suffixIconButton: IconButton(
                        icon: Icon(Icons.remove_red_eye_outlined),
                        onPressed: () {
                          obsecureText = !obsecureText;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: screensize.width * .1),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                              color: GlobalVariables.backgroundColor,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            color: GlobalVariables.lightBlue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        width: screensize.width * 0.85,
                        height: screensize.height * 0.07,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: screensize.width * 0.06,
                              fontWeight: FontWeight.w600,
                              color: GlobalVariables.backgroundColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: screensize.width * 0.8,
                      height: 1,
                      color: GlobalVariables.backgroundColor.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Or sign in with",
                      style: TextStyle(
                          color: GlobalVariables.backgroundColor,
                          fontSize: screensize.height * 0.015),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.apple,
                            size: screensize.width * 0.08,
                            color: GlobalVariables.backgroundColor,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            child: Image.asset("asset/google.png"),
                            width: screensize.width * 0.065,
                            height: screensize.width * 0.065,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.facebook,
                            size: screensize.width * 0.08,
                            color: GlobalVariables.lightBlue,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                              color: GlobalVariables.backgroundColor,
                              fontSize: screensize.height * 0.015),
                        ),
                        InkWell(
                          child: Text(
                            " Sign Up",
                            style: TextStyle(
                              color: GlobalVariables.backgroundColor,
                              fontSize: screensize.height * 0.015,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onTap: () async {
                            Navigator.pop(context);
                            showModalSignup(context: context);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
