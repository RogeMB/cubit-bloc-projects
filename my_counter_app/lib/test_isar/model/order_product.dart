// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

import 'menu_product_entity.dart';
import 'price_entity.dart';
import 'subproduct_entity.dart';

part 'order_product.g.dart';

@Collection(inheritance: false)
class OrderProduct extends Equatable {
  final Id isarId = Isar.autoIncrement;

  final int id;
  @Name("product_name")
  final String productName;
  final PriceEntity rates;
  final bool isMenu;
  final List<SubproductEntity> bases;
  final List<SubproductEntity> optionals;
  final List<SubproductEntity> extras;
  final int quantity;
  @Name("unit_price")
  final double unitPrice;
  @Name("menu_product_entity")
  final List<MenuProductEntity> menuProductEntity;
  @Name("business_info")
  final int businessInfo;
  @Name("total_price")
  final double totalPrice;

  const OrderProduct({
    required this.id,
    required this.productName,
    required this.rates,
    required this.isMenu,
    required this.bases,
    required this.optionals,
    required this.extras,
    required this.quantity,
    required this.unitPrice,
    required this.menuProductEntity,
    required this.businessInfo,
    required this.totalPrice,
  });

  OrderProduct copyWith({
    int? id,
    String? productName,
    PriceEntity? rates,
    bool? isMenu,
    List<SubproductEntity>? bases,
    List<SubproductEntity>? optionals,
    List<SubproductEntity>? extras,
    int? quantity,
    double? unitPrice,
    List<MenuProductEntity>? menuProductEntity,
    int? businessInfo,
    double? totalPrice,
  }) {
    return OrderProduct(
      id: id ?? this.id,
      productName: productName ?? this.productName,
      rates: rates ?? this.rates,
      isMenu: isMenu ?? this.isMenu,
      bases: bases ?? this.bases,
      optionals: optionals ?? this.optionals,
      extras: extras ?? this.extras,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      menuProductEntity: menuProductEntity ?? this.menuProductEntity,
      businessInfo: businessInfo ?? this.businessInfo,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  @override
  bool get stringify => true;

  @ignore
  @override
  List<Object> get props {
    return [
      id,
      productName,
      rates,
      isMenu,
      bases,
      optionals,
      extras,
      unitPrice,
      menuProductEntity,
      businessInfo,
    ];
  }
}
