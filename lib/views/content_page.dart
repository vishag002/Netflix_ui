// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflic_ui/utilis/color_const.dart';
import 'package:netflic_ui/utilis/text_const.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.background,
      appBar: AppBar(
        backgroundColor: ColorConst.background,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 195,
              width: double.maxFinite,
              color: Colors.amber,
              child: Image.asset(
                "assets/images/z1.png",
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10, top: 5),
              child: const Text(
                "Fifty Shades of Grey",
                style: TextConst.text1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 20),
              child: const Text(
                "2015",
                style: TextStyle(fontSize: 18, color: Colors.white60),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.play_arrow_sharp,
                    color: Colors.black,
                    size: 30,
                  ),
                  Text("Play",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ]),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 25, left: 3, right: 3, top: 3),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(5),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.download,
                    color: Colors.white,
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text("Download",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  )
                ]),
              ),
            ),

            ///textt
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Text(
                "Fifty Shades of Grey is a 2011 erotic romance novel by British author E. L. James. It became the first instalment in the Fifty Shades novel series that follows the deepening relationship between a college graduate, Anastasia Steele, and a young business magnate, Christian Grey.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
            Container(
                child: Column(children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 30),
                    child: Icon(Icons.add, color: Colors.white, size: 35),
                  ),
                  Icon(Icons.thumb_up_outlined, color: Colors.white, size: 35),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Icon(Icons.send_outlined,
                        color: Colors.white, size: 35),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 8, left: 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text("My List",
                          style: TextStyle(color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 31),
                      child:
                          Text("Rate", style: TextStyle(color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child:
                          Text("Share", style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              )
            ])),
            Divider(
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 50),
                    child: Text(
                      "collection",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Text(
                    "More Like This",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            //images
            Row(
              children: [
                Container(
                  height: 170,
                  width: 125,
                  //color: Colors.amber,
                  child: Image.asset('assets/images/z2.png', fit: BoxFit.fill),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    height: 170,
                    width: 125,
                    //color: Colors.amber,
                    child:
                        Image.asset('assets/images/z3.png', fit: BoxFit.fill),
                  ),
                ),
                Container(
                  height: 170,
                  width: 125,
                  //color: Colors.amber,
                  child: Image.asset('assets/images/z4.png', fit: BoxFit.fill),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
