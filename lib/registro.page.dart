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
      body: Column(
        children: [
          Text("Registro"),
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
    );
  }
}