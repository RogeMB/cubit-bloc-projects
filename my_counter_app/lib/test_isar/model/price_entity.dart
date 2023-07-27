// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:isar/isar.dart';

part 'price_entity.g.dart';

@embedded
class PriceEntity {
  String? name;
  double? price;
  PriceEntity({
    this.name,
    this.price,
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
  String toString() => 'PriceEntity(name: $name, price: $price)';

  @override
  bool operator ==(covariant PriceEntity other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.price == price;
  }

  @override
  int get hashCode => name.hashCode ^ price.hashCode;
}
