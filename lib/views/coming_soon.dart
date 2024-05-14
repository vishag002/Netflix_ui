import 'package:flutter/material.dart';
import 'package:netflic_ui/utilis/color_const.dart';

class CommingSoonPage extends StatelessWidget {
  const CommingSoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.background,
      body: Center(child: Image.asset("assets/images/comingsoon.jpg")),
    );
  }
}
