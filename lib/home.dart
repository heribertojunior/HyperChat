import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyperchatt/login.dart';
import 'package:hyperchatt/telas/abacontatos.dart';
import 'package:hyperchatt/telas/abaconversa.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _controllerTab;
  String? _emailUser = "";
  List<String> itensMenu = ["Configurações", "sair"];

  Future _recuperarDados() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? usuariolog = await auth.currentUser;

    setState(() {
      _emailUser = usuariolog?.email;
    });
  }

  @override
  void initState() {
    super.initState();
    _recuperarDados();
    _controllerTab = TabController(length: 2, vsync: this);
  }

  _escolhaMenuItem(String escolha) {
    switch (escolha) {
      case "sair":
        _deslogar();
        break;
      case "Configurações":
        Navigator.pushNamed(context, "/config");
        break;
    }

    print("escolhido: " + escolha);
  }

  _deslogar() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    await auth.signOut();
    Navigator.pushReplacementNamed(context, "/login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: Image.asset(
                  "images/logo.png",
                  width: 40,
                  height: 40,
                ),
              ),
              Text(
                "Hyper",
                style: TextStyle(color: Colors.green),
              ),
              Text(
                "Chat",
                style: TextStyle(color: Color(0xff00BFFF)),
              )
            ],
          ),
          bottom: TabBar(
            indicatorWeight: 4,
            labelStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff00BFFF)),
            controller: _controllerTab,
            indicatorColor: Color(0xff00BFFF),
            tabs: [
              Tab(
                child: Text(
                  "Conversas",
                  style: TextStyle(color: Color(0xff00BFFF)),
                ),
              ),
              Tab(
                  child: Text(
                "Conversas",
                style: TextStyle(color: Color(0xff00BFFF)),
              ))
            ],
          ),
          actions: [
            PopupMenuButton<String>(
              offset: const Offset(0.0, 60.0),
              icon: new Icon(Icons.more_vert, color: Color(0xff00BFFF)),
              elevation: 5,
              onSelected: _escolhaMenuItem,
              itemBuilder: (context) {
                return itensMenu.map((String item) {
                  return PopupMenuItem<String>(
                    value: item,
                    child:
                        Text(item, style: TextStyle(color: Color(0xff00BFFF))),
                  );
                }).toList();
              },
            )
          ],
        ),
        body: TabBarView(
          controller: _controllerTab,
          children: [
            AbaConversa(),
            AbaContatos(),
          ],
        ));
  }
}
