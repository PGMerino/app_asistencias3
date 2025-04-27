import 'package:flutter/material.dart';

class FechaProvider with ChangeNotifier {
  // Fecha sin formatear
  DateTime _fecha = DateTime.now();

  // Getter para acceder a fecha
  DateTime get fecha => _fecha;

  // Método de actualización de fecha
  void actualizarFecha (DateTime nuevaFecha) {
    _fecha = nuevaFecha;
    notifyListeners();
  }
}