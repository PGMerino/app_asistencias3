import 'package:app_asistencias/pages/alertas.dart';
import 'package:app_asistencias/pages/clases.dart';
import 'package:app_asistencias/pages/fecha.dart';
import 'package:app_asistencias/pages/login.dart';
import 'package:app_asistencias/pages/profesores.dart';
import 'package:app_asistencias/providers/index_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BarraNav extends StatelessWidget {
  const BarraNav({super.key});

  @override
  Widget build(BuildContext context) {
    // Accedemos al indice
    final indexProvider = Provider.of<IndexProvider>(context);

    // Si seleccionamos calendar se desplegará el modalButton
    return BottomNavigationBar(
      currentIndex: indexProvider.currentIndex,
      onTap: (index) {
        if (index == 1) {
          showModalBottomSheet(
              context: context,
              builder: (context) => Fecha_popUp()
          );
        } else {
          indexProvider.currentIndex = index;
        }
      },

      // Barra inferior de navegación
      items: const[
        // Lista de botones y sus nombres de navegacion
        // BOTÓN INICIO
        BottomNavigationBarItem(
          label: 'Inicio',
          icon: Icon(Icons.home),
        ),

        // BOTÓN FECHA
        BottomNavigationBarItem(
          label: 'Fecha',
          icon: Icon(Icons.calendar_month_outlined),
        ),

        // BOTÓN NOTIFICACIONES
        BottomNavigationBarItem(
          label: 'Alertas',
          icon: Icon(Icons.notifications_none),
        ),

        // BOTÓN PROFESORES
        BottomNavigationBarItem(
          label: 'Profesores',
          icon: Icon(Icons.person),
        )
      ],

      // Depende el boton en el que estemos = diferente color
      // Boton seleccionado = verde
      // Sino = negro
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black,
    );
  }
}
