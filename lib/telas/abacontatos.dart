import 'package:flutter/material.dart';
import 'package:hyperchatt/model/conversa.dart';

class AbaContatos extends StatefulWidget {
  const AbaContatos({Key? key}) : super(key: key);

  @override
  _AbaContatosState createState() => _AbaContatosState();
}

class _AbaContatosState extends State<AbaContatos> {
  List<Conversa> listaConversas = [
    Conversa("Jose Renato", "Olá tudo bem ?",
        "https://firebasestorage.googleapis.com/v0/b/chatflutter-8acad.appspot.com/o/perfil%2Fperfil2.jpg?alt=media&token=ffdec209-72c9-43eb-a430-960d070032d7"),
    Conversa("Ana Paula Padrão", "mussum ipsun?",
        "https://firebasestorage.googleapis.com/v0/b/chatflutter-8acad.appspot.com/o/perfil%2Fperfil1.jpg?alt=media&token=e264b81e-1835-44cd-bfa8-c85eb8c76987"),
    Conversa("Rita Lee", "Não, Já disse que bruce lee não é meu parente",
        "https://firebasestorage.googleapis.com/v0/b/chatflutter-8acad.appspot.com/o/perfil%2Fperfil3.jpg?alt=media&token=6929156a-06a2-4ec7-b284-6d9a91e46a37"),
    Conversa("Fotografo", "QUANDO VAI ME PAGAR?",
        "https://firebasestorage.googleapis.com/v0/b/chatflutter-8acad.appspot.com/o/perfil%2Fperfil4.jpg?alt=media&token=0abfddd0-d25d-4400-8b5f-ad2c4da52ce1"),
    Conversa("Kevin", "flw man to indo F1",
        "https://firebasestorage.googleapis.com/v0/b/chatflutter-8acad.appspot.com/o/perfil%2Fperfil5.jpg?alt=media&token=8e88aafc-c6b8-400d-b712-f2c487c32a93"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaConversas.length,
      itemBuilder: (BuildContext context, int index) {
        Conversa conversa = listaConversas[index];
        return Card(
          elevation: 5,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            leading: CircleAvatar(
              maxRadius: 30,
              backgroundColor: Colors.grey[500],
              backgroundImage: NetworkImage(conversa.caminhoFoto),
            ),
            title: Text(
              conversa.nome,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        );
      },
    );
  }
}
