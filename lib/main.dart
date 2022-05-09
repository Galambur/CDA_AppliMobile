import 'package:flutter/material.dart';
import 'package:jardindesplantes/models/type_plante.dart';
import 'package:jardindesplantes/ui/arbre_liste.dart';
import 'package:jardindesplantes/ui/arbuste_liste.dart';
import 'package:jardindesplantes/ui/fleur_liste.dart';
import 'package:jardindesplantes/ui/herbe_liste.dart';

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
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                switch (_typesPlantes[index].type) {
                  case 1:
                    // todo
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ArbreListe()));
                    break;
                  case 2:
                  // todo
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ArbusteListe()));
                    break;
                  case 3:
                  // todo
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FleurListe()));
                    break;
                  case 4:
                  // todo
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HerbeListe()));
                    break;
                }
              },
              child: _buildRow(_typesPlantes[index]),
            ),
            itemExtent: 180,
          ),
        ));
  }

  _buildRow(TypePlante typePlante) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
          color: typePlante.color,
          borderRadius: BorderRadius.all(const Radius.circular(20.0)),
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
                style: const TextStyle(
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
