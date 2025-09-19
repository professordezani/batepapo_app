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
      body: Column(
        children: [
          Text("Login"),
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
    );
  }
}