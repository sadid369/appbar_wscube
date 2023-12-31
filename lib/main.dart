import 'package:appbar_wscube/bottom_appbar_page.dart';
import 'package:appbar_wscube/bottom_nav_page.dart';
import 'package:appbar_wscube/drawer_page.dart';
import 'package:appbar_wscube/home_page.dart';
import 'package:appbar_wscube/navigation_rail_page.dart';
import 'package:appbar_wscube/tab_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomAppBarDemo(),
    );
  }
}
