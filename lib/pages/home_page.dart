import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final estiloTesto = new TextStyle(fontSize: 25);
  final conteo = 0;

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
            style: estiloTesto,
          ),
          Text(
            "$conteo",
            style: estiloTesto,
          ),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('DAR CLICK');
        },
        child: Icon(Icons.add_box),
      ),
    );
  }
}
