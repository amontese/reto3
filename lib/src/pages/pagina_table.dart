import 'package:flutter/material.dart';

class PaginaTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PaginaTableState();
}

class _PaginaTableState extends State<PaginaTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pagina de Tabla"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Container(
          child: DataTable(
              sortColumnIndex: 0,
              sortAscending: false,
              columns: <DataColumn>[
                DataColumn(
                  label: Text("Id"),
                  numeric: true,
                  onSort: (i, b) {
                    setState(
                      () {
                        personaData.sort((a, b) => a.Id.compareTo(b.Id));
                      },
                    );
                  },
                ),
                DataColumn(
                    label: Text("NroDoc"),
                    numeric: false,
                    onSort: (i, b) {
                      setState(() {
                        personaData
                            .sort((a, b) => a.NroDoc.compareTo(b.NroDoc));
                      });
                    }),
                DataColumn(
                    label: Text("Nombre"),
                    numeric: false,
                    onSort: (i, b) {
                      setState(() {
                        personaData
                            .sort((a, b) => a.Nombre.compareTo(b.Nombre));
                      });
                    })
              ],
              rows: personaData
                  .map(
                    (e) => DataRow(
                      cells: [
                        DataCell(Text((e.Id).toString())),
                        DataCell(Text(e.NroDoc)),
                        DataCell(Text(e.Nombre)),
                      ],
                    ),
                  )
                  .toList()),
        ),
      ),
    );
  }
}

class Persona {
  int Id;
  String NroDoc;
  String Nombre;

  Persona({required this.Id, required this.NroDoc, required this.Nombre});
}

var personaData = <Persona>[
  Persona(Id: 1, NroDoc: "654654", Nombre: "Juan"),
  Persona(Id: 2, NroDoc: "46546546", Nombre: "Maria"),
  Persona(Id: 3, NroDoc: "8798798", Nombre: "Olga"),
  Persona(Id: 4, NroDoc: "1321546", Nombre: "Pedro"),
  Persona(Id: 5, NroDoc: "654654", Nombre: "Alejandra"),
  Persona(Id: 6, NroDoc: "787987", Nombre: "Valentina"),
  Persona(Id: 7, NroDoc: "987987", Nombre: "Ricardo"),
  Persona(Id: 8, NroDoc: "3648454", Nombre: "Manuel"),
];
