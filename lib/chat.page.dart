import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {

  void deslogar(BuildContext context) {
    Navigator.pop(context);
    // Navigator.of(context)..pop()..pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
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
                  leading: CircleAvatar(),
                  title: Text("Nome do usuário"),
                  subtitle: Text("Mensagem enviada pelo usuário"),
                  trailing: Text("2 min."),
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(),
                  title: Text("Nome do usuário"),
                  subtitle: Text("Mensagem enviada pelo usuário"),
                  trailing: Text("2 min."),
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(),
                  title: Text("Nome do usuário"),
                  subtitle: Text("Mensagem enviada pelo usuário"),
                  trailing: Text("2 min."),
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(),
                  title: Text("Nome do usuário"),
                  subtitle: Text("Mensagem enviada pelo usuário"),
                  trailing: Text("2 min."),
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(),
                  title: Text("Nome do usuário"),
                  subtitle: Text("Mensagem enviada pelo usuário"),
                  trailing: Text("2 min."),
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(),
                  title: Text("Nome do usuário"),
                  subtitle: Text("Mensagem enviada pelo usuário"),
                  trailing: Text("2 min."),
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(),
                  title: Text("Nome do usuário"),
                  subtitle: Text("Mensagem enviada pelo usuário"),
                  trailing: Text("2 min."),
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(),
                  title: Text("Nome do usuário"),
                  subtitle: Text("Mensagem enviada pelo usuário"),
                  trailing: Text("2 min."),
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(),
                  title: Text("Nome do usuário"),
                  subtitle: Text("Mensagem enviada pelo usuário"),
                  trailing: Text("2 min."),
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(),
                  title: Text("Nome do usuário"),
                  subtitle: Text("Mensagem enviada pelo usuário"),
                  trailing: Text("2 min."),
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(),
                  title: Text("Nome do usuário"),
                  subtitle: Text("Mensagem enviada pelo usuário"),
                  trailing: Text("2 min."),
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(),
                  title: Text("Nome do usuário"),
                  subtitle: Text("Mensagem enviada pelo usuário"),
                  trailing: Text("2 min."),
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(),
                  title: Text("Nome do usuário"),
                  subtitle: Text("Mensagem enviada pelo usuário"),
                  trailing: Text("2 min."),                  
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(),
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