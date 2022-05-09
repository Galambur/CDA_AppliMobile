import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jardindesplantes/models/plante_data.dart';
import 'package:jardindesplantes/models/plante_type_enum.dart';

import '../models/plante.dart';

class HerbeListe extends StatefulWidget {
  @override
  _HerbeListeState createState() => _HerbeListeState();
}

class _HerbeListeState extends State<HerbeListe> {
  List<Plante> _herbes = PlanteData.buildList().where((element) => element.type == PlantType.Herbe).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Herbes"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: _herbes.length,
        itemBuilder: (context, index) {
          return _buildRow(_herbes[index]);
        },
      ),
    );
  }

  _buildRow(Plante herbe) {
    return Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10.0), top: Radius.circular(2.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(herbe.nom),
              leading: Icon(Icons.account_tree_rounded),
            ),
            Image.asset(herbe.image, height: 120, fit: BoxFit.fitWidth, width: MediaQuery.of(context).size.width,),
            Container(
              padding: const EdgeInsets.all(4.0),
              child: Text(herbe.description),
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
