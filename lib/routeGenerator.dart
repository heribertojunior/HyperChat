import 'package:flutter/material.dart';
import 'package:hyperchatt/cadastro.dart';
import 'package:hyperchatt/configuracoes.dart';
import 'package:hyperchatt/login.dart';

import 'home.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => Login(),
        );
        break;
      case "/login":
        return MaterialPageRoute(
          builder: (_) => Login(),
        );
        break;
      case "/cadastro":
        return MaterialPageRoute(
          builder: (_) => Cadastro(),
        );
        break;
      case "/home":
        return MaterialPageRoute(
          builder: (_) => Home(),
        );
        break;
      case "/config":
        return MaterialPageRoute(
          builder: (_) => Configuracoes(),
        );
        break;
    }
  }
}
