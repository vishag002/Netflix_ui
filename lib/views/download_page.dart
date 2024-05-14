import 'package:flutter/material.dart';
import 'package:netflic_ui/utilis/color_const.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.background,
      body: Center(
        child: Text(
          "NO DOWNLOADS...",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            backgroundColor: Colors.black87,
            wordSpacing: 5,
          ),
        ),
      ),
    );
  }
}
