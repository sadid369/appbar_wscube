import 'package:appbar_wscube/tabs/calls_page.dart';
import 'package:appbar_wscube/tabs/status_page.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  List<Widget> listNavigationDest = [
    StatusPage(),
    CallsPage(),
    StatusPage(),
    CallsPage(),
  ];
  var mIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        width: 300,
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(21),
              height: 200,
              color: Colors.blue,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(
                      width: 11,
                    ),
                    Text('sadid.jones@gmail.com ')
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      mIndex = 0;
                      Navigator.pop(context);
                      setState(() {});
                    },
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                  ListTile(
                    onTap: () {
                      mIndex = 1;
                      Navigator.pop(context);
                      setState(() {});
                    },
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                  ListTile(
                    onTap: () {
                      mIndex = 2;
                      Navigator.pop(context);
                      setState(() {});
                    },
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                  ListTile(
                    onTap: () {
                      mIndex = 3;
                      Navigator.pop(context);
                      setState(() {});
                    },
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: listNavigationDest[mIndex],
    );
  }
}
