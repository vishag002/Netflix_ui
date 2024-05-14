import 'package:flutter/material.dart';
import 'package:netflic_ui/utilis/color_const.dart';
import 'package:netflic_ui/views/coming_soon.dart';
import 'package:netflic_ui/views/download_page.dart';
import 'package:netflic_ui/views/home_page.dart';
import 'package:netflic_ui/views/menu_page.dart';
import 'package:netflic_ui/views/search_page.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex = 0;
  ////
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  ///pages

  final _pages = [
    const HomeScreen(),
    const CommingSoonPage(),
    const SearchPage(),
    const DownloadPage(),
    const MenuPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.background,
      body: _pages[_selectedIndex],
      // Bottom Navigation Bar //
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConst.background,
        iconSize: 40,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade700,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add_check), label: 'Coming soon'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.download), label: 'sownload'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'more'),
        ],
      ),
    );
  }
}
