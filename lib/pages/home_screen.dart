import 'package:app_asistencias/pages/alertas.dart';
import 'package:app_asistencias/pages/clases.dart';
import 'package:app_asistencias/pages/fecha.dart';
import 'package:app_asistencias/pages/profesores.dart';
import 'package:app_asistencias/providers/index_provider.dart';
import 'package:app_asistencias/widgets/barra_nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Widget> _pages = const [
    Clases_Page(),
    Clases_Page(),
    Alertas_Page(),
    Profesores_Page(),
  ];

  @override
  Widget build(BuildContext context) {
    final indexProvider = Provider.of<IndexProvider>(context);

    // DESCRIBIMOS LA ESTRUCTURA DE LA PÁGINA
    return Scaffold(
      // Le decimos que en base al index, muestre x contenido de una pagina
      body: _pages[indexProvider.currentIndex],
      // Le añadimos en la parte inferior el NavBar
      bottomNavigationBar: const BarraNav(),
    );
  }
}