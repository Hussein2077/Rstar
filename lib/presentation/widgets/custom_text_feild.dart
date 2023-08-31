import 'package:flutter/material.dart';
import 'package:saulefna/core/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.keyboardType = TextInputType.text,
      required this.prefixIcon,
      this.hintText,
      this.controller,
      this.obscureText = false,
      this.valid})
      : super(key: key);
  final TextInputType keyboardType;
  final Widget prefixIcon;
  final String? hintText;
  final bool obscureText;
  final String? valid;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 48,
      width: size.height * .87,
      child: Material(
        borderRadius: BorderRadius.circular(12),
        shadowColor: primaryColor.withOpacity(.2),
        elevation: 15,
        child: TextField(
          obscureText: obscureText,
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            errorText: valid,
            contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            prefixIcon: prefixIcon,
            hintText: hintText,

            hintStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: hintTextColor,
            ),

            // disabledBorder:OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(12),
            //   borderSide: BorderSide(color: Colors.grey.shade200,width: 100),
            // ) ,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),

            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: textButtonColor, width: 2)),
          ),
        ),
      ),
    );
  }
}
