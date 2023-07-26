// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'price_entity.g.dart';

@embedded
class PriceEntity extends Equatable {
  final String name;
  final double price;
  const PriceEntity({
    required this.name,
    required this.price,
  });

  PriceEntity copyWith({
    String? name,
    double? price,
  }) {
    return PriceEntity(
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [name, price];
}
