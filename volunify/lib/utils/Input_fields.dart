// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:volunify/utils/global_variable.dart';

// ignore: must_be_immutable
class InputField extends StatelessWidget {
  String? mode;
  IconData prefixIcon;
  IconButton? suffixIconButton;
  IconData? suffixIcon;
  VoidCallback? suffixOnPress;
  String? hintText;
  String labelText;
  bool obsecureText;
  TextInputType? keyboardType;
  TextEditingController textEditingController;
  bool? enabled;
  InputField(
      {super.key,
      required this.prefixIcon,
      required this.labelText,
      required this.obsecureText,
      required this.textEditingController,
      this.suffixIconButton,
      this.keyboardType,
      this.suffixIcon,
      this.mode,
      this.hintText,
      this.enabled});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: TextFormField(
        enabled: enabled,
        keyboardType: keyboardType,
        controller: textEditingController,
        obscureText: obsecureText,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          contentPadding: mode == "update"
              ? const EdgeInsets.symmetric(vertical: 5.0)
              : const EdgeInsets.symmetric(vertical: 20.0),
          prefixIcon:
              Icon(prefixIcon, color: GlobalVariables.darkBlue, size: 25),
          suffixIcon: suffixIconButton,
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.black),
          fillColor: GlobalVariables.formbackgroundColor,
          filled: true,
          enabledBorder: mode != "update"
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                      color: GlobalVariables.backgroundColor, width: 1.25),
                )
              : null,
          focusedBorder: mode != "update"
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                      color: GlobalVariables.lightBlue, width: 1.5),
                )
              : null,
        ),
      ),
    );
  }
}
