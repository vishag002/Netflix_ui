// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflic_ui/utilis/color_const.dart';
import 'package:netflic_ui/utilis/text_const.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/367148 1.png',
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 30,
                height: 50,
                decoration: BoxDecoration(
                    //color: Colors.amber,
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/images/image 2.png',
                  ),
                  fit: BoxFit.fill,
                )),
              ),
              SizedBox(height: 40),
              Container(
                height: 60,
                color: ColorConst.secondary,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintText: "Enter email",
                        hintStyle: TextConst.text3),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 60,
                color: ColorConst.secondary,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintText: "Enter password",
                        hintStyle: TextConst.text3),
                  ),
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.popAndPushNamed(context, '/user_page');
                },
                child: Container(
                  width: double.maxFinite,
                  height: 60,
                  color: ColorConst.primary,
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: TextConst.text1,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot password?",
                    style: TextConst.text2,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    )
        //DecorationImage(image: AssetImage("assets/images/367148 1.png")),
        );
  }
}
