import 'package:flutter/material.dart';

class CustomButtomAuth extends StatelessWidget {
  final void Function()? onPressed;
  final String text;

  const CustomButtomAuth({
    super.key,
    required this.text, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 5,
      splashColor: Colors.blueGrey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      onPressed: () {
        onPressed?.call();
      },
      focusColor: Colors.blueGrey,
      animationDuration: Duration(seconds: 2),
      minWidth: 300,
      color: Colors.blue,
      child: Text(text, style: const TextStyle(fontSize: 20, color: Colors.white),),
    );
  }
}