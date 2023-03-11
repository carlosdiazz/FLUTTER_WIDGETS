import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  TextStyle _estiloTesto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de Clicks: ',
              style: _estiloTesto,
            ),
            Text(
              "$_conteo",
              style: _estiloTesto,
            ),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: _crearBotones());
  }

  //todo quede aqui minuto 4
  Widget _crearBotones() {
    return FloatingActionButton(
      onPressed: () {
        _conteo++;
        setState(() {}); //Solo lo llamo para que dibuje los cambios
      },
      child: Icon(Icons.add_box),
    );
  }
}
