

import 'package:flutter/material.dart';
import 'package:gdsc_task_tow/const/colors.dart';

// main Button class
class Button extends StatelessWidget {
  final Widget buttonitems;
  final Color buttoncolor;
  final double buttonelevation;
  const Button(
      {super.key,
      required this.buttonitems,
      this.buttoncolor = Purple,
      this.buttonelevation = 0});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.5)),
        backgroundColor: buttoncolor,
        elevation: buttonelevation,
      ),
      onPressed: () {},
      child: buttonitems,
    );
  }
}

///// text press
class OnTap extends StatelessWidget {
  final Text title;

  const OnTap({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: title,
    );
  }
}
