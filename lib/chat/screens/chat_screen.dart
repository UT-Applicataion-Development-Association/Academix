import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.search),
          onPressed: () {},
        ),
        title: const Text("Friends(#OfNewMsg)"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 6),
            child: IconButton(
              icon: const Icon(CupertinoIcons.add_circled),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Center(
        child: Text('chat_screen'),
      ),
    );
  }
}
