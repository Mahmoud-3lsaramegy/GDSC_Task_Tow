import 'package:flutter/material.dart';
import 'package:gdsc_task_tow/SginUp.dart';
import 'package:gdsc_task_tow/login.dart';

void main() {
  runApp(const Appmain());
}

class Appmain extends StatefulWidget {
  const Appmain({super.key});

  @override
  State<Appmain> createState() => _AppmainState();
}

class _AppmainState extends State<Appmain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "login": (context) => const Loginpage(),
        "sginup": (context) => const Sginuppage(),
      },
      home: Loginpage(),
    );
  }
}
