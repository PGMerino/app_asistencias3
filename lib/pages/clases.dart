import 'package:app_asistencias/pages/alumno.dart';
import 'package:app_asistencias/widgets/encabezado.dart';
import 'package:flutter/material.dart';

class Clases_Page extends StatelessWidget {
  const Clases_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Header(),
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.grey[300], // Color de fondo
                borderRadius: BorderRadius.circular(20.0), // Bordes redondeados
              ),
              child: Column(
                children: [
                  ExpansionTile(
                    title: Text(
                      "CLASE 1 - 13:00 hrs",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      Container(
                        height: 210, // Ajusta la altura del contenedor
                        child: Alumno_Page(), // Muestra la página de alumnos
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: ElevatedButton(
                            onPressed: () {
                              // Lógica para confirmar
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Confirmado')),
                              );
                            },
                            child: Text("Confirmar"),
                            style:
                            ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                              const Color(0xFF003E00), // Color hexadecimal
                            )
                        ),
                      )
                    ],
                  ),

                  // EJEMPLO 2
                  ExpansionTile(
                    title: Text(
                      "CLASE 2 - 14:00 hrs",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      Container(
                        height:210,
                        child: Alumno_Page(), // Muestra la página de alumnos
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: ElevatedButton(
                            onPressed: () {
                              // Lógica para confirmar
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Confirmado')),
                              );
                            },
                            child: Text("Confirmar"),
                            style:
                            ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                              const Color(0xFF003E00), // Color hexadecimal
                            )
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
