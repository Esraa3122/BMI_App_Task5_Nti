import 'package:bmi_app/feature/home/model/model_home.dart';
import 'package:bmi_app/feature/home/view/screen/home_screen.dart';
import 'package:bmi_app/feature/home/view/widget/text_form_field.dart';
import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Form(
        key: formKey,
        child:  SizedBox(
          height: 230,
          child: ListView.builder(
                        itemCount: list2.length,
                        itemBuilder: (context, index) {
                          return TextformField(whModle: list2[index]);
                        }),
        ),),
    );
  }
}