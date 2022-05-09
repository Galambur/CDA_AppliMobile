import 'package:flutter/material.dart';
import 'package:jardindesplantes/models/type_plante.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jardin des plantes',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(title: 'Appli mobile Jardin des plantes'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String title;

  MyHomePage({required this.title, Key? key}) : super(key: key);

  final _typesPlantes = [
    TypePlante(1, 'Arbres', 'arbre.png', Colors.brown),
    TypePlante(2, 'Arbustes', 'arbuste.png', Colors.lime),
    TypePlante(3, 'Fleurs', 'fleur.png', Colors.pinkAccent),
    TypePlante(4, 'Herbes', 'herbe.png', Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: _typesPlantes.length,
            itemBuilder: (context, index) => _buildRow(_typesPlantes[index]),
            itemExtent: 180,
          ),
        ));
  }

  _buildRow(TypePlante typePlante) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
          color: typePlante.color,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      margin: EdgeInsets.all(4.0),
      child: Column(
        children: <Widget>[
          Expanded(
              child: Image.asset(
                'assets/images/types_plantes/${typePlante.image}',
                fit: BoxFit.fitWidth,
              )),
          Container(
            height: 50,
            child: Center(
              child: Text(
                typePlante.libelle,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    fontSize: 20
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
