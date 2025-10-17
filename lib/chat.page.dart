import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final TextEditingController mensagemCtrl = TextEditingController();

  void deslogar(BuildContext context) {
    _auth.signOut();
    Navigator.pop(context);
    // Navigator.of(context)..pop()..pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_auth.currentUser!.displayName ?? "Chat"),
        actions: [
          IconButton(
            onPressed: () => deslogar(context),
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
              stream: _db.collection('chat').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text("Loading...");
                }

                var docs = snapshot.data!.docs;

                return ListView(
                  reverse: true,
                  children:
                      docs
                          .map(
                            (doc) => ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://t.ctcdn.com.br/jSEs-a2AsizaO2xZCQXcdbGPZW0=/i490793.jpeg',
                                ),
                              ),
                              title: Text(doc['name']),
                              subtitle: Text(doc['message']),
                              trailing: Text("2 min."),
                            ),
                          )
                          .toList(),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5, 10, 0, 8),
            // padding: EdgeInsets.only(left: 5, bottom: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: mensagemCtrl,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                IconButton(onPressed: () {
                  _db.collection('chat').add({
                    'name': _auth.currentUser!.displayName,
                    'message': mensagemCtrl.text,
                    'uid': _auth.currentUser!.uid,
                    'timestamp': FieldValue.serverTimestamp(),
                  });
                  // _db.collection('chat').doc('123').delete();
                  // _db.collection('chat').doc('123').update({});
                }, icon: Icon(Icons.send)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
