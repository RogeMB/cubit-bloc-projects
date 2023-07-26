// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'subproduct_entity.g.dart';

@embedded
class SubproductEntity extends Equatable {
  final int id;
  final String name;
  final double price;
  final String typeVar;
  final bool isDisponible;

  const SubproductEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.typeVar,
    required this.isDisponible,
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
  bool get stringify => true;

  @override
  @ignore
  List<Object> get props {
    return [
      id,
      name,
      price,
      typeVar,
      isDisponible,
    ];
  }
}
