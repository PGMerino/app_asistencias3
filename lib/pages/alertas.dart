import 'package:app_asistencias/widgets/barra_nav.dart';
import 'package:app_asistencias/widgets/encabezado.dart';
import 'package:flutter/material.dart';

class Alertas_Page extends StatelessWidget {
  const Alertas_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Container(
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.grey[300], // Color de fondo
          borderRadius: BorderRadius.circular(20.0), // Bordes redondeados
        ),
        child: Column(
          children: [
            Text(
              'NOTIFICACIONES',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              '¡MUY BIEN, HAS PASADO LISTA DE TODOS TUS GRUPOS!',
              textAlign: TextAlign.center,
              style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      )

    );
  }
}
