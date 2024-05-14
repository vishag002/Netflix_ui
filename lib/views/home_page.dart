// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflic_ui/model/listiew.dart';
import 'package:netflic_ui/utilis/color_const.dart';
import 'package:netflic_ui/utilis/text_const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double halfheight = screenSize.height * 0.7;
    return Scaffold(
      backgroundColor: ColorConst.background,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: halfheight,
              child: CarouselSlider(
                items: [
                  Container(
                    height: halfheight,
                    /* height: 500,
                    width: double.maxFinite, */
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/image 5.png',
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    height: halfheight,
                    /* height: 500,
                    width: double.maxFinite, */
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/image 6.png',
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    height: halfheight,
                    /* height: 500,
                    width: double.maxFinite, */
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/image 7.png',
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: halfheight,
                  animateToClosest: true,
                  viewportFraction: 1,
                  aspectRatio: 1 / 10,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  // disableCenter: true,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30,
                    top: 50,
                    left: 20,
                    right: 30,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/image 2.png'),
                      Icon(
                        Icons.search,
                        size: 40,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 460,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/content_page');
                        },
                        child: Container(
                          height: 55,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.play_arrow),
                                SizedBox(height: 10),
                                Text(
                                  "Play",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        height: 55,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "My list",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 10, left: 15),
                  child: Text(
                    "Trending Now",
                    style: TextConst.text1,
                  ),
                ),
                ListHomeScreen(),
                Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 10, left: 15),
                  child: Text(
                    "Must-Watch",
                    style: TextConst.text1,
                  ),
                ),
                MustWatch(),
                Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 10, left: 15),
                  child: Text(
                    "Continue Watching for Ranjan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                ContinueWatching(),
                Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 10, left: 15),
                  child: Text(
                    "Only on NETFLIX",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                OnlyList()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
