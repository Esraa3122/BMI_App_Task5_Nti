import 'package:bmi_app/feature/home/view/screen/home_screen.dart';
import 'package:flutter/material.dart';

class WHModle {
  final TextEditingController controller;
  final String lable;
  final String hint;
  final IconData prefix;
  final String? Function(String?)? validator;
  WHModle(this.controller, this.lable, this.hint, this.prefix, this.validator,);
}

List<WHModle> list2 = [
  WHModle(
    heightController, 
    "الطول", 
    "ادخل الطول", 
    Icons.height, 
    (value) {
                  if (value!.isEmpty) {
                    return 'الرجاء ادخال الطول';
                  }if (value.length < 3) {
                    return 'الحقل يجب أن لا يكون أقل من 3 ارقام';
                  }
                  return null;
                },
    ),
    WHModle(
    weightController, 
    "الوزن", 
    "ادخل الوزن", 
    Icons.line_weight, 
    (value) {
                  if (value!.isEmpty) {
                    return 'الرجاء ادخال الوزن';
                  }
                  else if (value.length <2) {
                    return 'الحقل يجب أن لا يكون أقل من 2 ارقام';
                  }
                  return null;
                },
    ),

];
