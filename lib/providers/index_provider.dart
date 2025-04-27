import 'package:flutter/material.dart';

class IndexProvider with ChangeNotifier {
  int _currentIndex = 0; // Indice actual de la nav

  // Getter para obetener el indice actual
  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index; // Cambiamos de indice
    notifyListeners(); // Notificamos a los widget para que se redibujen
  }
}