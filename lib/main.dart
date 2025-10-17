import 'package:flutter/material.dart';
import 'chat.page.dart';
import 'registro.page.dart';
import 'login.page.dart';
import 'package:firebase_core/firebase_core.dart';

const firebaseConfig = FirebaseOptions(
  apiKey: "AIzaSyDW8UcIRMimMck0b4N2OEwvzQlTsHNOPZo",
  authDomain: "batepapo-f7475.firebaseapp.com",
  projectId: "batepapo-f7475",
  storageBucket: "batepapo-f7475.firebasestorage.app",
  messagingSenderId: "440327138379",
  appId: "1:440327138379:web:779bd25ec0d4ea0ae331ce"
);

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseConfig);
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/login": (context) => LoginPage(),
        "/registro": (context) => RegistroPage(),
        "/chat": (context) => ChatPage(),
      },
      initialRoute: "/login",
    );
  }
}
