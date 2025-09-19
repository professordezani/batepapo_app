import 'package:flutter/material.dart';
import 'chat.page.dart';
import 'registro.page.dart';
import 'login.page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/login": (context) => LoginPage(),
        "/registro": (context) => RegistroPage(),
        "/chat": (context) => ChatPage(),
      },
      initialRoute: "/login",
    );
  }
}
