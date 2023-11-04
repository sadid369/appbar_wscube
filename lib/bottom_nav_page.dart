import 'package:appbar_wscube/tabs/calls_page.dart';
import 'package:appbar_wscube/tabs/chat_page.dart';
import 'package:appbar_wscube/tabs/status_page.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  List<Widget> listNavigationDest = [
    StatusPage(),
    CallsPage(),
    StatusPage(),
    CallsPage(),
  ];
  int mIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botton Van Bar'),
      ),
      bottomNavigationBar: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: mIndex,
          onDestinationSelected: (value) {
            mIndex = value;
            setState(() {});
          },
          destinations: [
            NavigationDestination(
                selectedIcon: Icon(Icons.home_filled),
                icon: Icon(Icons.home),
                label: "Home"),
            NavigationDestination(
                icon: Icon(
                  Icons.account_circle,
                ),
                label: 'Profile'),
            NavigationDestination(icon: Icon(Icons.explore), label: "Explore"),
            NavigationDestination(
                icon: Icon(
                  Icons.settings,
                ),
                label: 'Settings'),
          ]),
      body: listNavigationDest[mIndex],
    );
  }
}
