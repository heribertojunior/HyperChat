import 'package:flutter/material.dart';
import 'package:hyperchatt/model/conversa.dart';

class AbaConversa extends StatefulWidget {
  const AbaConversa({Key? key}) : super(key: key);

  @override
  _AbaConversaState createState() => _AbaConversaState();
}

class _AbaConversaState extends State<AbaConversa> {

  List<Conversa> listaConversas = [
    Conversa("Jose Renato","Olá tudo bem ?","images/pessoas/pessoa1.jpg"),
    Conversa("Jose Renato","Olá tudo bem ?","images/pessoas/pessoa1.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaConversas.length,
      itemBuilder: (BuildContext context, int index) {
        return Card()
      },
    );
  }
}
