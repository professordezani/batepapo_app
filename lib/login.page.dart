import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  void logar(BuildContext context) {
    // Receber o e-mail, senha, validar e então navegar...
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
              decoration: InputDecoration(
                labelText: "E-mail",
                // filled: true,
                // hintText: "Digite seu e-mail empresarial.",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
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