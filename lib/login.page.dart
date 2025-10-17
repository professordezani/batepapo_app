import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController senhaCtrl = TextEditingController();

  void logar(BuildContext context) async{
    
    await _auth.signInWithEmailAndPassword(
      email: emailCtrl.text,
      password: senhaCtrl.text
    );

    Navigator.pushNamed(context, "/chat");
  }

  void registrar(BuildContext context) {
    Navigator.pushNamed(context, "/registro");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            TextField(
              controller: emailCtrl,
              decoration: InputDecoration(
                labelText: "E-mail",
                // filled: true,
                // hintText: "Digite seu e-mail empresarial.",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              controller: senhaCtrl,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
            ),
            ElevatedButton(
              onPressed: () => logar(context),
              child: Text("Logar"),
            ),
            TextButton(
              onPressed: () => registrar(context),
              child: Text("Registrar")
            )
          ],
        ),
      ),
    );
  }
}