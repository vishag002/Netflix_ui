// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflic_ui/model/movie_class.dart';
import 'package:netflic_ui/utilis/color_const.dart';
import 'package:netflic_ui/utilis/text_const.dart';
/* 
class GridImage extends StatelessWidget {
  const GridImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 2),
        itemBuilder: (context, index) => Container(
          height: 50,
          width: 200,
          color: Colors.amber,
        ),
      ),
    );
  }
} */

class GridImage extends StatelessWidget {
  GridImage({super.key});

  final items = [
    ['assets/images/Rectangle 4.png', 'DH'],
    ['assets/images/Rectangle 5.png', 'Alan'],
    ['assets/images/Rectangle 6.png', 'Sam'],
    ['assets/images/Rectangle 7.png', 'John'],
    ['assets/images/Rectangle 8.png', 'Adult'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.background,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 30,
            childAspectRatio: .9,
            mainAxisSpacing: 30),
        itemBuilder: (context, index) => Container(
          color: ColorConst.background,
          child: Column(
            children: [
              Container(
                height: 120,
                child: Image.asset(
                  items[index][0],
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 10),
              Text(items[index][1], style: TextConst.text2),
            ],
          ),
        ),
        itemCount: items.length, // Set the number of items in the grid
      ),
    );
  }
}

//////list view for homw screens
///trending movies

class ListHomeScreen extends StatelessWidget {
  ListHomeScreen({super.key});
  final List<Movie> trendingMovie = [
    Movie(title: "title", imageurl: 'assets/images/Rectangle 18.png'),
    Movie(title: "title", imageurl: 'assets/images/Rectangle 19.png'),
    Movie(title: "title", imageurl: 'assets/images/Rectangle 20.png'),
    Movie(title: "title", imageurl: 'assets/images/Rectangle 21.png'),
    Movie(title: "title", imageurl: 'assets/images/Rectangle 22.png'),
    Movie(title: "title", imageurl: 'assets/images/Rectangle 23.png'),
    Movie(title: "title", imageurl: 'assets/images/Rectangle 24.png'),
    Movie(title: "title", imageurl: 'assets/images/Rectangle 25.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 00),
        shrinkWrap: true,
        itemCount: trendingMovie.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 18),
          child: Container(
            height: 100,
            width: 110,
            color: Colors.amber,
            child: Image.asset(
              trendingMovie[index].imageurl,
              scale: 1,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

///must watch
class MustWatch extends StatelessWidget {
  MustWatch({super.key});
  final List<Movie> MustWatchMovies = [
    Movie(title: "title", imageurl: 'assets/images/mw1.png'),
    Movie(title: "title", imageurl: 'assets/images/mv2.png'),
    Movie(title: "title", imageurl: 'assets/images/mv3.png'),
    Movie(title: "title", imageurl: 'assets/images/mw4.png'),
    Movie(title: "title", imageurl: 'assets/images/mv5.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        shrinkWrap: true,
        itemCount: MustWatchMovies.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Container(
            height: 170,
            width: 110,
            color: Colors.amber,
            child: Image.asset(
              MustWatchMovies[index].imageurl,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

///continue watching
class ContinueWatching extends StatelessWidget {
  ContinueWatching({super.key});
  final List<Movie> continueWatchingMovies = [
    Movie(title: "title", imageurl: 'assets/images/cw1.png'),
    Movie(title: "title", imageurl: 'assets/images/cw2.png'),
    Movie(title: "title", imageurl: 'assets/images/cw3.png'),
    Movie(title: "title", imageurl: 'assets/images/cw4.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        height: 217,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: continueWatchingMovies.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 110,
              color: Colors.black,
              child: Column(
                children: [
                  Image.asset(
                    continueWatchingMovies[index].imageurl,
                    height: 170,
                    fit: BoxFit.fitWidth,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                      Icon(
                        Icons.more_vert_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/////only on netflix
class OnlyList extends StatelessWidget {
  OnlyList({super.key});
  final List<Movie> onlyListMovie = [
    Movie(title: "title", imageurl: 'assets/images/a1.png'),
    Movie(title: "title", imageurl: 'assets/images/a2.png'),
    Movie(title: "title", imageurl: 'assets/images/a3.png'),
    Movie(title: "title", imageurl: 'assets/images/a1.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Container(
            height: 300,
            width: 160,
            color: Colors.white,
            child: Image.asset(onlyListMovie[index].imageurl, fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
