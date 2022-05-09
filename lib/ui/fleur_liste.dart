import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jardindesplantes/models/plante_data.dart';
import 'package:jardindesplantes/models/plante_type_enum.dart';

import '../models/plante.dart';

class FleurListe extends StatefulWidget {
  @override
  _FleurListeState createState() => _FleurListeState();
}

class _FleurListeState extends State<FleurListe> {
  List<Plante> _fleurs = PlanteData.buildList().where((element) => element.type == PlantType.Fleur).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fleurs"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: _fleurs.length,
        itemBuilder: (context, index) {
          return _buildRow(_fleurs[index]);
        },
      ),
    );
  }

  _buildRow(Plante fleur) {
    return Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10.0), top: Radius.circular(2.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(fleur.nom),
              leading: Icon(Icons.account_tree_rounded),
            ),
            Image.asset(fleur.image, height: 120, fit: BoxFit.fitWidth, width: MediaQuery.of(context).size.width,),
            Container(
              padding: const EdgeInsets.all(4.0),
              child: Text(fleur.description),
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
