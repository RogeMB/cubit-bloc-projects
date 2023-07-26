// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:isar/isar.dart';

import 'subproduct_entity.dart';
import 'price_entity.dart';

part 'order_product.g.dart';

@collection
class OrderProduct {
  Id? isarId;

  final int id;
  final String productName;
  final PriceEntity rates;
  final bool isMenu;
  final SubproductEntity bases; // list
  final SubproductEntity optionals;//list
  final SubproductEntity extras;//list
  final int? quantity;
  final double? unitPrice;
  final MenuProductEntity //list
  @Name("final_price")
  final int businessInfo;
  final double? totalPrice;

  OrderProduct({
    this.id,
    this.name,
    this.basse,
    this.mainOptional,
    this.optionals,
    this.extra,
    this.unitPrice,
    this.quantity,
    this.finalPrice,
  });

  OrderProduct copyWith({
    int? id,
    String? name,
    Tarifa? basse,
    Subproduct? mainOptional,
    Subproduct? optionals,
    Subproduct? extra,
    double? unitPrice,
    int? quantity,
    double? finalPrice,
  }) {
    return OrderProduct(
      id: id ?? this.id,
      name: name ?? this.name,
      basse: basse ?? this.basse,
      mainOptional: mainOptional ?? this.mainOptional,
      optionals: optionals ?? this.optionals,
      extra: extra ?? this.extra,
      unitPrice: unitPrice ?? this.unitPrice,
      quantity: quantity ?? this.quantity,
      finalPrice: finalPrice ?? this.finalPrice,
    );
  }

  @override
  String toString() {
    return 'OrderProduct(id: $id, name: $name, basse: $basse, mainOptional: $mainOptional, optionals: $optionals, extra: $extra, unitPrice: $unitPrice, quantity: $quantity, finalPrice: $finalPrice)';
  }

  @override
  bool operator ==(covariant OrderProduct other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.basse == basse &&
        other.mainOptional == mainOptional &&
        other.optionals == optionals &&
        other.extra == extra &&
        other.unitPrice == unitPrice &&
        other.quantity == quantity &&
        other.finalPrice == finalPrice;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        basse.hashCode ^
        mainOptional.hashCode ^
        optionals.hashCode ^
        extra.hashCode ^
        unitPrice.hashCode ^
        quantity.hashCode ^
        finalPrice.hashCode;
  }
}
