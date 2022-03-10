import 'package:flutter/material.dart';
import 'package:flutter_blog/components/custom_elevated_button.dart';
import 'package:flutter_blog/components/custom_text_form_field.dart';
import 'package:flutter_blog/components/custom_textarea.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:get/get.dart';

class UpdatePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                CustomTextFormField(
                  hint: "Title",
                  funcValidator: validateTitle(),
                  value: "나중에 서버로부터 가져올 글 제목",
                ),
                CustomTextArea(
                  hint: "Content",
                  funValidator: validateContent(),
                  value: "서버로부터 가져올 글내용",
                ),
                // homepage -> detailpage -> detailpage
                // Get.off를 사용해서 이런 경우가 발생하게 됨.
                CustomElevatedButton(
                  text: "글 수정하기",
                  funcPageRoute: () {
                    if (_formKey.currentState!.validate()) {
                      Get.back(); // 상태관리를 할거라 데이터 갱신 걱정 x - GetX 라이브러리 - Obs
                    }
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
