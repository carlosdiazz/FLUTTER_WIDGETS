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
              'Conteo: ',
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
    return Row(
      children: [
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          onPressed: _default_0,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          onPressed: _restar,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          onPressed: _agregar,
          child: Icon(Icons.add),
        ),
        SizedBox(
          width: 30.0,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }

  void _agregar() {
    setState(() {
      _conteo++;
    });
  }

  void _restar() {
    setState(() {
      if (_conteo > 0) {
        _conteo--;
      }
    });
  }

  void _default_0() {
    setState(() {
      _conteo = 0;
    });
  }
}
