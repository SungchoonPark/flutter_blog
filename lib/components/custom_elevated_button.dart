import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_blog/pages/user/login_page.dart';

class CustomElevatedButton extends StatelessWidget {

  final String text;
  // 함수임
  final funcPageRoute;

  const CustomElevatedButton({required this.text, this.funcPageRoute});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style:ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )
        ),
        onPressed: funcPageRoute,
        child: Text("$text")
    );
  }
}
