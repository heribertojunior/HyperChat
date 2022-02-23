import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
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
      ),
      body: Container(),
    );
  }
}
