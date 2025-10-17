import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void deslogar(BuildContext context) {
    _auth.signOut();
    Navigator.pop(context);
    // Navigator.of(context)..pop()..pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_auth.currentUser!.email ?? "Chat"),
        actions: [
          IconButton(
            onPressed: () => deslogar(context),
            icon: Icon(Icons.logout)
          )
        ]
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              reverse: true,
              children: [
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://t.ctcdn.com.br/jSEs-a2AsizaO2xZCQXcdbGPZW0=/i490793.jpeg'),
                  ),
                  title: Text("Nome do usuário"),
                  subtitle: Text("Mensagem enviada pelo usuário"),
                  trailing: Text("2 min."),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5, 10, 0, 8),
            // padding: EdgeInsets.only(left: 5, bottom: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder()
                    ),
                  )
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                ),
              ],
            )
          )        
        ],
      ),
    );
  }
}