// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final TabController mController;
  const ChatPage({
    Key? key,
    required this.mController,
  }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.green.shade200,
          child: Center(
            child: Text(
              'Chat Page',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              widget.mController.animateTo(1,
                  duration: Duration(seconds: 2), curve: Curves.bounceIn);
            },
            child: Text('Next'))
      ],
    );
  }
}
