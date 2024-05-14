import 'package:flutter/material.dart';
import 'package:netflic_ui/model/movie_class.dart';
import 'package:netflic_ui/utilis/color_const.dart';
import 'package:netflic_ui/utilis/text_const.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Movie> searchList = [
    Movie(title: "Stranger Things", imageurl: 'assets/images/q1.png'),
    Movie(title: "Naruto", imageurl: 'assets/images/q2.png'),
    Movie(title: "Squid Game", imageurl: 'assets/images/q3.png'),
    Movie(title: "Death Note", imageurl: 'assets/images/q4.png'),
    Movie(title: "Dark", imageurl: 'assets/images/q5.png'),
    Movie(title: "Jujutsu Kaison", imageurl: 'assets/images/q6.png'),
    Movie(title: "Wednesday", imageurl: 'assets/images/q7.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.background,
      ),
      backgroundColor: ColorConst.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
            color: Colors.grey[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white60,
                    size: 50,
                  ),
                  Container(
                    color: Colors.transparent,
                  ),
                  Icon(
                    Icons.mic,
                    color: Colors.white60,
                    size: 35,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text("Recommended Anime & Movies", style: TextConst.text1),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 75,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 75,
                        width: 144,
                        color: Colors.black,
                        child: Image.asset(searchList[index].imageurl,
                            fit: BoxFit.fill),
                      ),
                      Text(
                        searchList[index].title,
                        style: TextConst.text1,
                      ),
                      Icon(
                        Icons.play_circle_outline,
                        color: Colors.white,
                        size: 40,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
