import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hyperchatt/cadastro.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xff0B567C)),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "images/logo.png",
                    width: 200,
                    height: 150,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8, left: 32, right: 32),
                  child: TextField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      hintText: "E-mail",
                      filled: true,
                      fillColor: Color(0xffC2F6E8),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8, left: 32, right: 32),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      hintText: "Senha",
                      filled: true,
                      fillColor: Color(0xffC2F6E8),
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
                        "Entrar",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.transparent,
                      padding: EdgeInsets.fromLTRB(30, 16, 32, 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      onPressed: () {
                        //alidarCampos();
                      },
                    ),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    child: Text(
                      "Não tem conta? Cadastre-se",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Cadastro();
                        },
                      ));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
