import 'dart:ffi';

class Alumno {
  String nombre;
  String apellidos;
  bool permFotos;
  bool asistencia = true;

  Alumno(this.nombre, this.apellidos, this.permFotos, this.asistencia);
}

List<Alumno> Alumnos =
[
  new Alumno("Pepe", "Martinez", false, true),
  new Alumno("Jules", "Connor", true, true),
  new Alumno("Rupert", "Fernandez", true, true),
];