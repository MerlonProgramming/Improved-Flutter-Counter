// PACKAGE

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloLetra = new TextStyle(fontSize: 25);
  final conteo = 10;

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
        children: <Widget>[
          Text('Numero de Taps:', style: estiloLetra),
          Text('$conteo',
              style: estiloLetra), //Puedes utilizar $conteo o conteo.toString()
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chat),
        onPressed: () {
          // conteo++;
        },
      ),
    );
  }
}
