// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

@embedded
class MenuProductEntity extends Equatable {
  final String namePlate;
  final String numberPlate;

  const MenuProductEntity({
    required this.namePlate,
    required this.numberPlate,
  });
  // Falta lista de productos

  MenuProductEntity copyWith({
    String? namePlate,
    String? numberPlate,
  }) {
    return MenuProductEntity(
      namePlate: namePlate ?? this.namePlate,
      numberPlate: numberPlate ?? this.numberPlate,
    );
  }

  @override
  bool get stringify => true;

  @override
  @ignore
  List<Object> get props => [namePlate, numberPlate];
}
