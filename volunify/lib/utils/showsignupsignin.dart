import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:volunify/utils/Input_fields.dart';

Future<void> showModal({required BuildContext context}) async {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  return showModalBottomSheet<void>(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Wrap(
          children: [
            Container(
              color: Color(0xff041B26),
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    InputField(
                      prefixIcon: Icons.person,
                      labelText: 'Email',
                      obsecureText: false,
                      textEditingController: _emailController,
                    ),
                    InputField(
                      prefixIcon: Icons.lock,
                      labelText: 'Password',
                      obsecureText: true,
                      textEditingController: _passwordController,
                      suffixIcon: Icons.remove_red_eye_outlined,
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
