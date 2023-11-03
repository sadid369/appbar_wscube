import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber.shade200,
      child: Center(
        child: Text(
          'Status Page',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
