import 'package:flutter/material.dart';
import 'package:reto_3/src/pages/pagina_inicio.dart';

class MiAppReto3 extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: PaginaInicio(),
      ),
    );
  }
}
