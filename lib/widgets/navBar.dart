import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_asistencias/utils/routes/navBar_viewmodel.dart';


class navBar extends StatelessWidget  {
  const navBar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavBarViewModel = Provider.of<navBarViewModel>(context);

    return BottomNavigationBar(
      currentIndex: NavBarViewModel.currentIndex,
      onTap: (index) {
        NavBarViewModel.setCurrentIndex(index); // Cambia el índice
      },
      items: const [
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
