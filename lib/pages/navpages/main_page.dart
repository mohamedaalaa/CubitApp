

import 'package:cubit/pages/navpages/char_page.dart';
import 'package:cubit/pages/navpages/home_page.dart';
import 'package:cubit/pages/navpages/my_page.dart';
import 'package:cubit/pages/navpages/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages=[
    const HomePage(),
    const CharPage(),
    const SearchPage(),
    const MyPage(),
  ];

  int currentIndex=0;

  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        unselectedItemColor: Colors.grey.withOpacity(.3),
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,
        elevation: 1,
        currentIndex: currentIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.apps),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.apps),label:'Bar'),
          BottomNavigationBarItem(icon: Icon(Icons.apps),label:'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.apps),label:'Profile'),
        ],
      ),
    );
  }
}
