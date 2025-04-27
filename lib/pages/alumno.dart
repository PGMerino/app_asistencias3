import 'package:app_asistencias/entities/alumno.dart';
import 'package:flutter/material.dart';


class Alumno_Page extends StatefulWidget {
  const Alumno_Page({super.key});

  @override
  State<Alumno_Page> createState() => _Alumno_PageState();
}

class _Alumno_PageState extends State<Alumno_Page> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Alumnos.length,
      itemBuilder: (context, index) {
        final Alumno = Alumnos[index];
        return ListTile(
          leading: CircleAvatar(
            child: Alumno.permFotos
                ? Icon(Icons.camera_alt)
                : Icon(Icons.camera_alt_outlined),
          ),
          title: Text(Alumno.nombre),
          subtitle: Text(Alumno.apellidos),
          trailing: Switch(
            value: Alumno.asistencia,
            activeColor: Colors.green,
            inactiveTrackColor: Colors.red,
            onChanged: (bool value) {
              setState(() {
                Alumno.asistencia = value;
              });
            },
          ),
        );
      },
    );
  }
}