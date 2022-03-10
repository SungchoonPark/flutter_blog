import 'package:flutter/material.dart';
import 'package:flutter_blog/components/custom_elevated_button.dart';
import 'package:flutter_blog/components/custom_text_form_field.dart';
import 'package:flutter_blog/pages/user/login_page.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:get/get.dart';

class JoinPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Container(
          alignment: Alignment.center,
          height: 200,
          child: Text(
            "Join Page",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        _joinForm(),
      ],
    ));
  }

  // return 타입은 항상 최상위 부모 타입을 적어주는것이 좋음
  Widget _joinForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // 이 세개의 text를 한꺼번에 스프링 서버쪽으로 날리기 위해서 form 으로 묶음
          CustomTextFormField(
            hint: "Username",
            funcValidator: validateUsername(),
          ),
          CustomTextFormField(
            hint: "Password",
            funcValidator: validatePassword(),
          ),
          CustomTextFormField(
            hint: "Email",
            funcValidator: validateEmail(),
          ),
          CustomElevatedButton(
            text: "회원가입",
            funcPageRoute: () {
              if (_formKey.currentState!.validate()) {
                Get.to(LoginPage());
              }
            },
          ),
          TextButton(
            onPressed: () {
              Get.to(LoginPage());
            },
            child: Text("이미 회원가입이 되어있나요?"),
          ),
        ],
      ),
    );
  }
}
