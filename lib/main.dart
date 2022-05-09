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
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Appli mobile Jardin des plantes'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String title;

  MyHomePage({required this.title, Key? key}) : super(key: key);

  final _typesPlantes = [
    TypePlante(1, 'Arbres', 'arbre.png', const Color.fromRGBO(145, 104, 80, 0.8)),
    TypePlante(2, 'Arbustes', 'arbuste.png', const Color.fromRGBO(120, 161, 104, 0.8)),
    TypePlante(3, 'Fleurs', 'fleur.png', const Color.fromRGBO(191, 132, 180, 0.8)),
    TypePlante(4, 'Herbes', 'herbe.png', const Color.fromRGBO(94, 128, 110, 0.8))
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ArbreListe()));
                    break;
                  case 2:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ArbusteListe()));
                    break;
                  case 3:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FleurListe()));
                    break;
                  case 4:
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
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10.0), top: Radius.circular(5.0)),
      ),
      margin: EdgeInsets.all(4.0),
      child: Column(
        children: <Widget>[

          Expanded(
            child: Image.asset(
              'assets/images/types_plantes/${typePlante.image}',
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: 50,
            child: Center(
              child: Text(
                typePlante.libelle,
                style: const TextStyle(
                    color: Color.fromRGBO(1, 23, 7, 1),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RaleWay',
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
