import 'package:flutter/material.dart';
import 'package:login/Widgets/custom_bg.dart';
import 'package:login/Widgets/custom_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBg(
        child: Column(
      children: [
        Flexible(
            flex: 8,
            child: Center(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Welcome Back! \n ",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "Enter your personal details to login your  \n Account!",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ])),
            )),
        Row(
          children: [
            Expanded(child: Custombutton()),
          ],
        )
      ],
    ));
  }
}
