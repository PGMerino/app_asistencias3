import 'package:flutter/material.dart';

import '../../pages/alertas.dart';
import '../../pages/clases.dart';
import '../../pages/home_screen.dart';
import '../../pages/login.dart';
import '../../pages/profesores.dart';

class navBarViewModel extends ChangeNotifier {
  // Índice actual del BottomNavigationBar
  int _currentIndex = 0;

  //Listado de rutas a las que se puede ir
  final List<Widget> _views = [
    Login_Page(),
    HomeScreen(),
    Clases_Page(),
    Profesores_Page(),
    Alertas_Page()
  ];

  //Listado de rutas a las que se puede ir
  final List<String> _viewsTitles = [
    "Login",
    "Home",
    "Clases",
    "Profesores",
    "Alertas"
  ];

  int get currentIndex => _currentIndex;
  List<Widget> get views => _views;
  List<String> get viewsTitles => _viewsTitles;

  Widget getView() {
    return _views[_currentIndex];
  }

  String getViewTitle() {
    return _viewsTitles[_currentIndex];
  }

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners(); // Notifica a los widgets para que se actualicen
  }
}