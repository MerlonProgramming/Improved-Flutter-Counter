import 'package:flutter/material.dart';
// import 'package:flutter_app1/src/pages/home_pages.dart';
import 'package:flutter_app1/src/pages/contador_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }
}
