import 'package:appbar_wscube/tabs/calls_page.dart';
import 'package:appbar_wscube/tabs/chat_page.dart';
import 'package:appbar_wscube/tabs/status_page.dart';
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  late TabController mTabController;
  String mTitle = "WhatsApp";
  @override
  void initState() {
    super.initState();
    mTabController = TabController(length: 3, vsync: this);

    mTabController.addListener(() {
      print(mTabController.index);
      if (mTabController.index == 0) {
        mTitle = "Chats";
      } else if (mTabController.index == 1) {
        mTitle = "Status";
      } else if (mTabController.index == 2) {
        mTitle = "Calls";
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mTitle),
        bottom: TabBar(
          controller: mTabController,
          // isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.chat),
                  SizedBox(
                    width: 11,
                  ),
                  Text('Chats'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.update),
                SizedBox(
                  width: 11,
                ),
                Text('Status'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                SizedBox(
                  width: 11,
                ),
                Text('Calls'),
              ],
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: mTabController,
        children: [
          ChatPage(mController: mTabController),
          StatusPage(),
          CallsPage(),
        ],
      ),
    );
  }
}
