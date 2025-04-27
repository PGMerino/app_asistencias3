class Profesor {
  String nombre;
  String password;
  String email;

  Profesor({
    required this.nombre,
    required this.password,
    required this.email
  });
}

List<Profesor> Profes =
[
  new Profesor(nombre: "Paula", password: "123", email: "Paula@gmail.com"),
  new Profesor(nombre: "Pepe", password: "123", email: "Pepe@gmail.com"),
  new Profesor(nombre: "Judith", password: "1243", email: "Judith@gmail.com"),
  new Profesor(nombre: "Rupert", password: "123", email: "Rupert@gmail.com")
];