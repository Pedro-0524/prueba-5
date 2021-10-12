import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:prueba5/menulateral.dart';
import 'package:prueba5/pages/calendario.dart';
import 'package:prueba5/pages/chat.dart';
import 'package:prueba5/pages/home.dart';
import 'package:prueba5/pages/juegos.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 0;

  List<Widget> _paginas = [
    home(),
    calendario(),
    chat(),
    juegos(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        drawer: menulateral(),
        appBar: AppBar(
          title: Text(
            'Fundación Restaurados',
          ),
          backgroundColor: Colors.purple[900],
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _paginaActual = index;
              });
            },
            currentIndex: _paginaActual,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  label: "Inicio",
                  backgroundColor: Colors.grey[400]),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.calendar_today,
                    color: Colors.black,
                  ),
                  label: "calendario",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat,
                    color: Colors.black,
                  ),
                  label: "Chat",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.gamepad,
                    color: Colors.black,
                  ),
                  label: "juegos",
                  backgroundColor: Colors.white),
            ]),
      ),
    );
  }
}
