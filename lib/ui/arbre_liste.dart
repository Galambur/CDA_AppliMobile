import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jardindesplantes/models/plante_data.dart';
import 'package:jardindesplantes/models/plante_type_enum.dart';

import '../models/plante.dart';

class ArbreListe extends StatefulWidget {
  @override
  _ArbreListeState createState() => _ArbreListeState();
}

class _ArbreListeState extends State<ArbreListe> {
  List<Plante> _arbres = PlanteData.buildList().where((element) => element.type == PlantType.Arbre).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arbres"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: _arbres.length,
        itemBuilder: (context, index) {
          return _buildRow(_arbres[index]);
        },
      ),
    );
  }

  _buildRow(Plante arbre) {
    return Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10.0), top: Radius.circular(2.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(arbre.nom),
              leading: Icon(Icons.account_tree_rounded),
            ),
            Image.asset(arbre.image, height: 120, fit: BoxFit.fitWidth, width: MediaQuery.of(context).size.width,),
            Container(
              padding: const EdgeInsets.all(4.0),
              child: Text(arbre.description),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red.shade50),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.streetview),
                      SizedBox(width: 5),
                      Text("En savoir plus")
                    ],
                  ),
                  onPressed: () {
                    print("En savoir plus");
                  },
                )
              ],
            )
          ],
        )
    );
  }
}
