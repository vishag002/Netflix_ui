import 'package:flutter/material.dart';
import 'package:netflic_ui/model/listiew.dart';
import 'package:netflic_ui/utilis/color_const.dart';
import 'package:netflic_ui/utilis/text_const.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.background,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/image 3.png',
          scale: .5,
          color: Colors.red,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 130, bottom: 50),
              child: Text(
                "Who's Watching?",
                style: TextConst.text1,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  // color: Colors.amber,
                  child: GridImage(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/base_page');
                },
                child: Text(
                  "Edit",
                  style: TextConst.text1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
