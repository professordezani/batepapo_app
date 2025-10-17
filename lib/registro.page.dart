import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController nomeCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();  
  final TextEditingController senhaCtrl = TextEditingController();

 void registrar(BuildContext context) async {
  try {
    var c = await _auth.createUserWithEmailAndPassword(
      email: emailCtrl.text,
      password: senhaCtrl.text
    );
    await c.user!.updateDisplayName(nomeCtrl.text);
    Navigator.pushReplacementNamed(context, "/chat");
  } on FirebaseAuthException catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(e.message ?? 'Erro ao registrar.'))
    );
  }
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
              controller: nomeCtrl,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder()
              ),
              keyboardType: TextInputType.name,
            ),
            TextField(
              controller: emailCtrl,
              decoration: InputDecoration(
                labelText: "E-mail",
                border: OutlineInputBorder()
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              controller: senhaCtrl,
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