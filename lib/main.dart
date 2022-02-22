//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'home.dart';
import 'login.dart';

Future<void> main() async {
/*
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseFirestore.instance
      .collection('usuarios')
      .doc('001')
      .set({'nome': 'Heriberto'});*/

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
    theme: ThemeData(
        primaryColor: Color(0xff0B567C), accentColor: Color(0xffC2F6E8)),
  ));
}
