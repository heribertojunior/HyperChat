import 'package:flutter/material.dart';

class Configuracoes extends StatefulWidget {
  const Configuracoes({Key? key}) : super(key: key);

  @override
  _ConfiguracoesState createState() => _ConfiguracoesState();
}

class _ConfiguracoesState extends State<Configuracoes> {
  TextEditingController _controllerNome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Configurações",
          style: TextStyle(color: Color(0xff00BFFF)),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xff00BFFF)),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Carregando
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.grey[500],
                  backgroundImage: NetworkImage(
                      "https://firebasestorage.googleapis.com/v0/b/chatflutter-8acad.appspot.com/o/perfil%2Fperfil5.jpg?alt=media&token=8e88aafc-c6b8-400d-b712-f2c487c32a93"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      child: Text("Camera",
                          style: TextStyle(color: Color(0xff00BFFF))),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("Galeria",
                          style: TextStyle(color: Color(0xff00BFFF))),
                      onPressed: () {},
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16, left: 32, right: 32),
                  child: TextField(
                    controller: _controllerNome,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      hintText: "Nome",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32)),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 16, bottom: 10, left: 32, right: 32),
                  child: Container(
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        gradient: new LinearGradient(
                          colors: [
                            Color(0xff81F79F),
                            Color(0xff2EFEF7),
                            Color(0xff00BFFF)
                          ],
                        )),
                    child: RaisedButton(
                      child: Text(
                        "Salvar",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.transparent,
                      padding: EdgeInsets.fromLTRB(30, 16, 32, 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      onPressed: () {
                        //_validarCampos();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
