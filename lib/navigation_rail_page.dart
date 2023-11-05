import 'package:appbar_wscube/tabs/calls_page.dart';
import 'package:appbar_wscube/tabs/status_page.dart';
import 'package:flutter/material.dart';

class NavigationRailPage extends StatefulWidget {
  const NavigationRailPage({Key? key}) : super(key: key);

  @override
  _NavigationRailPageState createState() => _NavigationRailPageState();
}

class _NavigationRailPageState extends State<NavigationRailPage> {
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
        bottomNavigationBar: MediaQuery.of(context).size.width < 640
            ? NavigationBar(
                labelBehavior:
                    NavigationDestinationLabelBehavior.onlyShowSelected,
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
                    NavigationDestination(
                        icon: Icon(Icons.explore), label: "Explore"),
                    NavigationDestination(
                        icon: Icon(
                          Icons.settings,
                        ),
                        label: 'Settings'),
                  ])
            : null,
        body: Row(
          children: [
            if (MediaQuery.of(context).size.width >= 640)
              NavigationRail(
                leading: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.person),
                    )
                  ],
                ),
                labelType: NavigationRailLabelType.all,
                selectedLabelTextStyle: const TextStyle(color: Colors.amber),
                destinations: [
                  NavigationRailDestination(
                      icon: Icon(Icons.home), label: Text('Home')),
                  NavigationRailDestination(
                      icon: Icon(Icons.settings), label: Text('Settings')),
                  NavigationRailDestination(
                      icon: Icon(Icons.account_circle), label: Text('Profile')),
                  NavigationRailDestination(
                      icon: Icon(Icons.favorite), label: Text('Favorite')),
                ],
                selectedIndex: mIndex,
                onDestinationSelected: (value) {
                  mIndex = value;
                  setState(() {});
                },
              ),
            Expanded(child: listNavigationDest[mIndex]),
          ],
        ));
  }
}
