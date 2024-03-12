import 'package:flutter/material.dart';
import 'package:gdsc_task_tow/Widgets/Buttons.dart';
import 'package:gdsc_task_tow/Widgets/TextFiled.dart';
import 'package:gdsc_task_tow/const/colors.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: White),
      backgroundColor: White,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(12.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topRight,
              child: const Text(
                "Log In to Brand",
                style: TextStyle(
                  color: DarkPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button(
                  buttoncolor: White,
                  buttonelevation: 1,
                  buttonitems: SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("images/google.png"),
                          width: 25,
                          height: 25,
                        ),
                        Text(
                          "Google",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Button(
                  buttoncolor: White,
                  buttonelevation: 1,
                  buttonitems: SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("images/facebook.png"),
                          width: 25,
                          height: 25,
                          filterQuality: FilterQuality.medium,
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 2.5,
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Or Log In Using Email ",
                      style: TextStyle(fontSize: 9, color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.all(3.0),
              child: Text(
                "EMAIl",
                style: TextStyle(fontSize: 8.5),
              ),
            ),
            TextFiledmy(
              controllerVule: email,
              hint: "saramegy@gmail.com",
            ),
            const SizedBox(
              height: 12.5,
            ),
            const Padding(
              padding: EdgeInsets.all(3.0),
              child: Text(
                "PASSWORD",
                style: TextStyle(fontSize: 8.5),
              ),
            ),
            TextFiledmy(
              controllerVule: password,
              hint: "sara*a*s/*****",
            ),
            Container(
                margin: const EdgeInsets.only(top: 8.5, bottom: 8.5),
                alignment: Alignment.centerRight,
                child: const OnTap(
                  title: Text(
                    "Forget Password?",
                    style: TextStyle(color: Purple, fontSize: 10.5),
                  ),
                )),
            const SizedBox(
              height: 25,
            ),
            Button(
                buttonitems: Container(
              height: 50,
              alignment: Alignment.center,
              child: const Text(
                "Log In",
                style: TextStyle(
                  color: White,
                  fontSize: 22,
                ),
              ),
            )),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "New to Brand",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  child: const Text(
                    "Sing Up",
                    style: TextStyle(color: Purple, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "sginup");
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
