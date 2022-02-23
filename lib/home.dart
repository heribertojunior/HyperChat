import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0B567C),
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
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          bottom: TabBar(
            indicatorWeight: 4,
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            controller: _controllerTab,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: "Conversas",
              ),
              Tab(
                text: "Contatos",
              )
            ],
          ),
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
