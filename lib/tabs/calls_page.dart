import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade200,
      child: Center(
        child: Text(
          'Call Page',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
