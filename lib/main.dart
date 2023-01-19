import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vk_ui_ratkum/pages/GlavPage.dart';
import 'package:vk_ui_ratkum/pages/KlipPage.dart';
import 'package:vk_ui_ratkum/pages/MessagePage.dart';
import 'package:vk_ui_ratkum/pages/ServicePage.dart';
import 'package:vk_ui_ratkum/pages/VideoPage.dart';
import 'package:vk_ui_ratkum/theme.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _sellectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _sellectedIndex = index;
    });
  }

  final List<Widget> _children = [
    GlavPage(),
    ServicePage(),
    MessagePage(),
    KlipPage(),
    VideoPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_sellectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 14,
          fixedColor: Colors.white,
          backgroundColor: primaryGrey,
          unselectedItemColor: primaryGrey2,
          // selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _sellectedIndex,
          onTap: _navigateBottomNavBar,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Главная"),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps_rounded), label: "Сервисы"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Мессенджер"),
            BottomNavigationBarItem(
                icon: Icon(Icons.thumbs_up_down_outlined), label: "Клипы"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined), label: "Видео")
          ]),
    );
  }
}
