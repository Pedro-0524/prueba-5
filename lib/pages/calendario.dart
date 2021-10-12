import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class calendario extends StatefulWidget {
  const calendario({Key? key}) : super(key: key);

  @override
  State<calendario> createState() => _calendarioState();
}

class _calendarioState extends State<calendario> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendario"),
        centerTitle: true,
      ),
      body: TableCalendar(
        focusedDay: focusedDay,
        firstDay: DateTime(1990),
        lastDay: DateTime(2050),
        calendarFormat: format,
        onFormatChanged: (CalendarFormat _format) {
          setState(() {
            format = _format;
          });
        },
        startingDayOfWeek: StartingDayOfWeek.sunday,
        daysOfWeekVisible: true,
        onDaySelected: (DateTime selecDay, DateTime focusDay) {
          setState(() {
            selectedDay = selecDay;
            focusedDay = focusDay;
          });
          print(focusDay);
        },
      ),
    );
  }
}
