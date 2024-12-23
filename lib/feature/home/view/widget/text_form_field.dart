import 'package:bmi_app/feature/home/model/model_home.dart';
import 'package:bmi_app/src/widget/border_text_form_field.dart';
import 'package:flutter/material.dart';

class TextformField extends StatelessWidget {
  const TextformField({
    super.key,
    required this.whModle,
  });

  final WHModle whModle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: whModle.validator,
        keyboardType: const TextInputType.numberWithOptions(),
        controller: whModle.controller,
        decoration: InputDecoration(
          label: Text(whModle.lable),
          hintText: whModle.hint,
          prefixIcon: Icon(
            whModle.prefix,
            color: Colors.blue,
          ),
          suffix: InkWell(
              onTap: () {
                whModle.controller.clear();
              },
              child: const Icon(
                Icons.highlight_remove,
                color: Colors.red,
              )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: borderTextField(color: Colors.blue, radius: 20),
          focusedBorder: borderTextField(color: Colors.green, radius: 50),
          errorBorder: borderTextField(
            color: Colors.red,
            radius: 15,
          ),
        ),
      ),
    );
  }
}