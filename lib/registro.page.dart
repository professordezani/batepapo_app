import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {
 void registrar(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/chat");
  }

  void voltar(BuildContext context) {
    Navigator.pop(context);
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
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder()
              ),
              keyboardType: TextInputType.name,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "E-mail",
                border: OutlineInputBorder()
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder()
              ),
            ),
            ElevatedButton(
              onPressed: () => registrar(context),
              child: Text("Registrar"),
            ),
            TextButton(
              onPressed: () => voltar(context),
              child: Text("Voltar")
            )
          ],
        ),
      ),
    );
  }
}