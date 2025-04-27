import 'package:app_asistencias/pages/home_screen.dart';
import 'package:app_asistencias/providers/fecha_provider.dart';
import 'package:app_asistencias/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_asistencias/providers/index_provider.dart';
import 'package:app_asistencias/pages/login.dart';
import 'package:app_asistencias/pages/clases.dart';
import 'package:app_asistencias/pages/alertas.dart';
import 'package:app_asistencias/pages/profesores.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // Provider para gestionar el indice y la fecha
        ChangeNotifierProvider(create: (_) => IndexProvider()),
        ChangeNotifierProvider(create: (_) => FechaProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider())
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => const Login_Page(),
        '/home': (context) => const HomeScreen(),
        '/clases': (context) => const Clases_Page(),
        '/profesores': (context) => const Profesores_Page(),
        '/alertas': (context) => const Alertas_Page(),
      },
    );
  }
}
