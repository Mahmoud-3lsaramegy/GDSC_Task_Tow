import 'package:flutter/material.dart';

class TextFiledmy extends StatelessWidget {
  final TextEditingController controllerVule;
  final String hint;
  //final String filedname;
  const TextFiledmy({super.key, required this.controllerVule, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerVule,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        hintText: hint,
        ///label: Text(filedname),
      ),
    );
  }
}
