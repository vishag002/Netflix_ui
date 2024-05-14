import 'package:flutter/material.dart';
import 'package:netflic_ui/model/listiew.dart';
import 'package:netflic_ui/views/base_page.dart';
import 'package:netflic_ui/views/coming_soon.dart';
import 'package:netflic_ui/views/content_page.dart';
import 'package:netflic_ui/views/download_page.dart';
import 'package:netflic_ui/views/home_page.dart';
import 'package:netflic_ui/views/menu_page.dart';
import 'package:netflic_ui/views/search_page.dart';
import 'package:netflic_ui/views/signin_page.dart';
import 'package:netflic_ui/views/user_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignInPage(),
      routes: {
        '/sigin_page': (context) => const SignInPage(),
        '/user_page': (context) => const UserPage(),
        '/home_page': (context) => const HomeScreen(),
        '/coming_soon': (context) => const CommingSoonPage(),
        '/search': (context) => const SearchPage(),
        '/download_page': (context) => const DownloadPage(),
        '/menu_page': (context) => const MenuPage(),
        '/base_page': (context) => const BasePage(),
        '/list_page': (context) => ListHomeScreen(),
        '/content_page': (context) => const ContentPage()
      },
    );
  }
}
