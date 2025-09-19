import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {

  void deslogar(BuildContext context) {
    Navigator.pop(context);
    // Navigator.of(context)..pop()..pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Chat"),
          TextButton(
            onPressed: () => deslogar(context),
            child: Text("Deslogar")
          )
        ],
      ),
    );
  }
}