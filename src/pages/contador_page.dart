import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloLetra = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFul'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Numero de Taps:', style: _estiloLetra),
          Text('$_conteo',
              style:
                  _estiloLetra), //Puedes utilizar $conteo o conteo.toString()
        ],
      )),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            _reset();
          },
          child: Icon(Icons.exposure_zero),
        ),
        SizedBox(height: 8.0),
        FloatingActionButton(
          onPressed: () {
            _sustraer();
          },
          child: Icon(Icons.remove),
        ),
        SizedBox(height: 8.0),
        FloatingActionButton(
          onPressed: () {
            _agregar();
          },
          child: Icon(Icons.add),
        ),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
