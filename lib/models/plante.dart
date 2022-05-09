import 'package:jardindesplantes/models/plante_type_enum.dart';

class Plante {
  final int id;
  final String nom;
  final String image;
  final String description;
  final PlantType type;

  Plante(this.id, this.nom, this.description, this.image, this.type);
}

