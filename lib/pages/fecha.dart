import 'package:app_asistencias/widgets/barra_nav.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:provider/provider.dart';
import 'package:app_asistencias/providers/fecha_provider.dart';

class Fecha_popUp extends StatefulWidget {
  const Fecha_popUp({super.key});

  @override
  State<Fecha_popUp> createState() => _Fecha_popUpState();
}

class _Fecha_popUpState extends State<Fecha_popUp> {
  late DateTime fecha = DateTime.now();
  late DateTime _focusedDay = DateTime.now();

  @override
  void initState() {
    super.initState();
    fecha = DateTime.now(); // Inicializamos la fecha con la actual
    _focusedDay = fecha;
    initializeDateFormatting();
  }

  void _onSelectedDay(DateTime selectedDay, DateTime focusedDay) {
    final fechaProvider = Provider.of<FechaProvider>(context, listen: false);
    fechaProvider.actualizarFecha(selectedDay);

    Navigator.of(context).pop();
    Navigator.pushNamedAndRemoveUntil(context, '/home', (Route<dynamic> route) => false);
  }



  @override
  Widget build(BuildContext context) {
    // Accedemos al fecha provider
    final fechaProvider = Provider.of<FechaProvider>(context);

    // Accedemos al provider con posibilidad de modificarlo
    final fechaSeleccionada = Provider.of<FechaProvider>(context).fecha;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          TableCalendar(
            rowHeight: 40,
            locale: 'es_ES',

            //Permite que no sea necesario pulsar sobre las flechas sino también deslizar
            availableGestures: AvailableGestures.all,
            onDaySelected: _onSelectedDay,
            selectedDayPredicate: (day) => isSameDay(day, fecha),
            focusedDay: _focusedDay,

            // Fecha comienzo de calendario
            firstDay: DateTime.utc(2000, 1, 1),

            // Finaliza el calendario
            lastDay: DateTime.utc(2090, 31, 12),
            calendarFormat: CalendarFormat.month, // Formato por defecto, mensual

            startingDayOfWeek: StartingDayOfWeek.monday,

            headerStyle: HeaderStyle(
              formatButtonVisible: false, // Ocultar botón de formato de calendario
              titleCentered: true // El mes que se muestra sale centrado
            ),



          ),

          SizedBox(height: 20),

          // Muestra la fecha selecionada
          Text("Día seleccionado: ${DateFormat('dd-MM-yyyy').format(fechaSeleccionada)}"),

          SizedBox(height: 20),

          // Botón para confirmar la fecha y te redirige a clases con el dia selecionado
          // Botón Iniciar sesión
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFF003E00), // Color hexadecimal
                fixedSize: Size.fromHeight(40)),
            onPressed: () {
              fechaProvider.actualizarFecha(_focusedDay);
              Navigator.pushNamedAndRemoveUntil(context, '/home', (Route<dynamic> route) => false);
            },

            child: const Text(
              'Confirmar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
