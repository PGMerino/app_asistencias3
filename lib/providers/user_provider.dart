import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String _email = "";

  String get email => _email;

  void setEmail(String newEmail) {
    _email = newEmail;
    notifyListeners(); // Notifica a los widgets que están escuchando
  }
}
