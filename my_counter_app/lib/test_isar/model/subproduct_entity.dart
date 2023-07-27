// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:isar/isar.dart';

part 'subproduct_entity.g.dart';

@embedded
class SubproductEntity {
  int? id;
  String? name;
  double? price;
  String? typeVar;
  bool? isDisponible;

  SubproductEntity({
    this.id,
    this.name,
    this.price,
    this.typeVar,
    this.isDisponible,
  });

  SubproductEntity copyWith({
    int? id,
    String? name,
    double? price,
    String? typeVar,
    bool? isDisponible,
  }) {
    return SubproductEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      typeVar: typeVar ?? this.typeVar,
      isDisponible: isDisponible ?? this.isDisponible,
    );
  }

  @override
  String toString() {
    return 'SubproductEntity(id: $id, name: $name, price: $price, typeVar: $typeVar, isDisponible: $isDisponible)';
  }

  @override
  bool operator ==(covariant SubproductEntity other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.price == price &&
      other.typeVar == typeVar &&
      other.isDisponible == isDisponible;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      price.hashCode ^
      typeVar.hashCode ^
      isDisponible.hashCode;
  }
}
