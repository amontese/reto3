import 'package:flutter/material.dart';
import 'package:reto_3/src/pages/pagina_android.dart';
import 'package:reto_3/src/pages/pagina_home.dart';
import 'package:reto_3/src/pages/pagina_table.dart';

class PaginaInicio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  final tabs = [
    Center(child: PaginaAndroid()),
    Center(child: PaginaHome()),
    Center(child: PaginaTable())
  ];
  int _indiceactual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_indiceactual],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lightGreen,
        selectedItemColor: Colors.black,
        selectedFontSize: 25.0,
        unselectedFontSize: 20.0,
        iconSize: 40.0,
        currentIndex: _indiceactual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.adb), label: "Android"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3_rounded), label: "Tabla")
        ],
        onTap: (index) {
          setState(() {
            _indiceactual = index;
          });
        },
      ),
    );
  }
}
