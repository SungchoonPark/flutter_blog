import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String hint;
  // 함수
  final funcValidator;

  const CustomTextFormField({required this.hint, this.funcValidator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        validator: funcValidator,
        obscureText: hint=="Password"? true : false,
        decoration: InputDecoration(
            hintText: "Enter $hint", // null 안정성 때문에 문자열 안에 넣는게 좋음
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )
        ),
      ),
    );
  }
}