import 'package:bmi_app/src/core/style/string_app.dart';
import 'package:bmi_app/src/core/style/text_style.dart';
import 'package:flutter/material.dart';

AppBar appBarHome(){
  return AppBar(
    backgroundColor: Colors.blue,
    elevation: 0,
    title:  Text(StringApp.appBarTitle, style: appBarHomeStyle(),),
    centerTitle: true,
  );
}