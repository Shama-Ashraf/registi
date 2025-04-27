import 'package:flutter/material.dart';
import 'package:login/Screens/login.dart';
import 'package:login/Screens/sign_up.dart';

class Custombutton extends StatefulWidget {
  const Custombutton({
    super.key,
  });

  @override
  State<Custombutton> createState() => _CustombuttonState();
}

class _CustombuttonState extends State<Custombutton> {
  bool isMale = false;
  bool isSignin = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onDoubleTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            onTap: (() {
              setState(() {
                isMale = true;
                isSignin = true;
              });
            }),
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  color: isMale ? Colors.white : Colors.transparent,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              child: Center(
                  child: Text(
                "Sign In",
                style: TextStyle(
                    color: isSignin ? Colors.black : Colors.white,
                    fontWeight: FontWeight.bold),
              )),
            )),
        Spacer(),
        GestureDetector(
          onDoubleTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignUp()));
          },
          onTap: (() {
            setState(() {
              isMale = false;
              isSignin = false;
            });
          }),
          child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  color: !isMale ? Colors.white : Colors.transparent,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              child: Center(
                  child: Text(
                "Sign Up",
                style: TextStyle(
                    color: !isSignin ? Colors.black : Colors.white,
                    fontWeight: FontWeight.bold),
              ))),
        )
      ],
    );
  }
}
