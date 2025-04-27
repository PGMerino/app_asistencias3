import 'package:app_asistencias/entities/profesores.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/user_provider.dart';
import '../widgets/encabezado.dart';

class Profesores_Page extends StatelessWidget {
  const Profesores_Page({super.key});

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
            Expanded( // Permite al ListView ocupar espacio restante
              child: ListView.builder(
                itemCount: Profes.length,
                itemBuilder: (context, index) {
                  final Profesor = Profes[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(Profesor.nombre[0]), // Muestra la inicial del nombre
                      ),
                      title: Text(Profesor.nombre),
                      subtitle: Text(Profesor.email),
                      onTap: () {
                        // Al pulsarlo cambia de usuario logueado
                        Provider.of<UserProvider>(context, listen: false).setEmail(Profesor.nombre);
                      },
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Text("Cerrar Sesión"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF003E00), // Color hexadecimal
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
