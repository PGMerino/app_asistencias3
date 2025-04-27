import 'package:app_asistencias/pages/clases.dart';
import 'package:app_asistencias/pages/home_screen.dart';
import 'package:app_asistencias/providers/user_provider.dart';
import 'package:app_asistencias/widgets/barra_nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_asistencias/widgets/encabezado.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  bool _isChecked = false; // Variable para controlar el estado del checkbox
  String _email = "";
  String _pass = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra el contenido en la pantalla
          children: [
            // Espacio arriba para empujar el logo hacia arriba
            Spacer(flex: 1),

            // Logo
            Expanded(
              flex: 3,
              child: Image.asset(
                'images/icono_app.png',
              ),
            ),


            // Espacio entre el logo y el campo de texto
            const SizedBox(height: 20),

            // Campo usuarioz
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Usuario',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF003E00),
                  fontSize: 20,
                ),
              ),
            ),
            TextField(
              onChanged: (email){
                _email = email;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),

            // Espacio entre los campos de texto
            SizedBox(height: 30),

            // Campo contraseña
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Contraseña',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF003E00),
                  fontSize: 20,
                ),
              ),
            ),
            TextField(
              onChanged: (pass) {
                _pass = pass;
              },
              obscureText: true, // Ocultar el texto de la contraseña
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),

            // Espacio entre los campos de texto y el checkbox
            const SizedBox(height: 20),

            // Row con el checkbox y el texto
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
                const Text('Recordar contraseña'),
              ],
            ),

            // Espacio entre el checkbox y el botón de iniciar sesión
            SizedBox(height: 20),

            // Botón Iniciar sesión
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFF003E00), // Color hexadecimal
                fixedSize: Size.fromHeight(70)
              ),
              onPressed: () {
                // PRUEBAS
                // Lógica inicio sesión
                // Verificar que las credenciales sean correctas etc
                print("Email es: " + _email );
                if (_email == "test" && _pass == "123") {
                  // Guardamos el "email, nombre con un provider para usarlo de encabezado
                  Provider.of<UserProvider>(context, listen: false).setEmail(_email);

                  // Navegar a la pagina de inicio sin verificacion
                  Navigator.pushReplacementNamed(context, '/home');
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          textAlign: TextAlign.center,
                          "Credenciales incorrectas"
                        ),
                        content: Text(
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                            "Los datos introducidos son incorrectos, revisa el usuario y contraseña."
                        ),
                        actions: [
                          TextButton(
                            child: Text(
                              style: TextStyle(
                                fontSize: 20
                              ),
                              "Cerrar"
                            ),
                            onPressed: () {
                              Navigator.of(context).pop(); // Cierra el diálogo
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: const Text(
                'Iniciar Sesión',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),

            // Espacio extra al final si es necesario (se puede ajustar)
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
