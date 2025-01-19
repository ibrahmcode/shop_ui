import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/asset/color.dart';
import 'package:shop_ui/pages/badge_page.dart';
import 'package:shop_ui/pages/favorite_page.dart';
import 'package:shop_ui/pages/home_page.dart';
import 'package:shop_ui/pages/notification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;

  List pages = [
    const Center(
      child: homepage(),
    ),
    const Center(
      child: notifactionpage(),
    ),
    const Center(
      child: favoritepage(),
    ),
    const Center(
      child: badgepage(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            index: _index,
            onTap: (value) {
              setState(() {
                _index = value;
              });
            },
            items: const [
              Icon(
                Icons.home,
                size: 30,
              ),
              Icon(
                Icons.notifications,
                size: 30,
              ),
              Icon(
                Icons.favorite,
                size: 30,
              ),
              Icon(
                Icons.badge,
                size: 30,
              ),
            ]),
        body: pages[_index],
      ),
    );
  }
}
