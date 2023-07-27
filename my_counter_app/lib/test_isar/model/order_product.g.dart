// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_product.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetOrderProductCollection on Isar {
  IsarCollection<OrderProduct> get orderProducts => this.collection();
}

const OrderProductSchema = CollectionSchema(
  name: r'OrderProduct',
  id: 9014927253170020184,
  properties: {
    r'bases': PropertySchema(
      id: 0,
      name: r'bases',
      type: IsarType.objectList,
      target: r'SubproductEntity',
    ),
    r'business_info': PropertySchema(
      id: 1,
      name: r'business_info',
      type: IsarType.long,
    ),
    r'extras': PropertySchema(
      id: 2,
      name: r'extras',
      type: IsarType.objectList,
      target: r'SubproductEntity',
    ),
    r'id': PropertySchema(
      id: 3,
      name: r'id',
      type: IsarType.long,
    ),
    r'isMenu': PropertySchema(
      id: 4,
      name: r'isMenu',
      type: IsarType.bool,
    ),
    r'menu_product_entity': PropertySchema(
      id: 5,
      name: r'menu_product_entity',
      type: IsarType.objectList,
      target: r'MenuProductEntity',
    ),
    r'optionals': PropertySchema(
      id: 6,
      name: r'optionals',
      type: IsarType.objectList,
      target: r'SubproductEntity',
    ),
    r'product_name': PropertySchema(
      id: 7,
      name: r'product_name',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 8,
      name: r'quantity',
      type: IsarType.long,
    ),
    r'rates': PropertySchema(
      id: 9,
      name: r'rates',
      type: IsarType.object,
      target: r'PriceEntity',
    ),
    r'stringify': PropertySchema(
      id: 10,
      name: r'stringify',
      type: IsarType.bool,
    ),
    r'total_price': PropertySchema(
      id: 11,
      name: r'total_price',
      type: IsarType.double,
    ),
    r'unit_price': PropertySchema(
      id: 12,
      name: r'unit_price',
      type: IsarType.double,
    )
  },
  estimateSize: _orderProductEstimateSize,
  serialize: _orderProductSerialize,
  deserialize: _orderProductDeserialize,
  deserializeProp: _orderProductDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'PriceEntity': PriceEntitySchema,
    r'SubproductEntity': SubproductEntitySchema,
    r'MenuProductEntity': MenuProductEntitySchema
  },
  getId: _orderProductGetId,
  getLinks: _orderProductGetLinks,
  attach: _orderProductAttach,
  version: '3.1.0+1',
);

int _orderProductEstimateSize(
  OrderProduct object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.bases.length * 3;
  {
    final offsets = allOffsets[SubproductEntity]!;
    for (var i = 0; i < object.bases.length; i++) {
      final value = object.bases[i];
      bytesCount +=
          SubproductEntitySchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.extras.length * 3;
  {
    final offsets = allOffsets[SubproductEntity]!;
    for (var i = 0; i < object.extras.length; i++) {
      final value = object.extras[i];
      bytesCount +=
          SubproductEntitySchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.menuProductEntity.length * 3;
  {
    final offsets = allOffsets[MenuProductEntity]!;
    for (var i = 0; i < object.menuProductEntity.length; i++) {
      final value = object.menuProductEntity[i];
      bytesCount +=
          MenuProductEntitySchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.optionals.length * 3;
  {
    final offsets = allOffsets[SubproductEntity]!;
    for (var i = 0; i < object.optionals.length; i++) {
      final value = object.optionals[i];
      bytesCount +=
          SubproductEntitySchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.productName.length * 3;
  bytesCount += 3 +
      PriceEntitySchema.estimateSize(
          object.rates, allOffsets[PriceEntity]!, allOffsets);
  return bytesCount;
}

void _orderProductSerialize(
  OrderProduct object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<SubproductEntity>(
    offsets[0],
    allOffsets,
    SubproductEntitySchema.serialize,
    object.bases,
  );
  writer.writeLong(offsets[1], object.businessInfo);
  writer.writeObjectList<SubproductEntity>(
    offsets[2],
    allOffsets,
    SubproductEntitySchema.serialize,
    object.extras,
  );
  writer.writeLong(offsets[3], object.id);
  writer.writeBool(offsets[4], object.isMenu);
  writer.writeObjectList<MenuProductEntity>(
    offsets[5],
    allOffsets,
    MenuProductEntitySchema.serialize,
    object.menuProductEntity,
  );
  writer.writeObjectList<SubproductEntity>(
    offsets[6],
    allOffsets,
    SubproductEntitySchema.serialize,
    object.optionals,
  );
  writer.writeString(offsets[7], object.productName);
  writer.writeLong(offsets[8], object.quantity);
  writer.writeObject<PriceEntity>(
    offsets[9],
    allOffsets,
    PriceEntitySchema.serialize,
    object.rates,
  );
  writer.writeBool(offsets[10], object.stringify);
  writer.writeDouble(offsets[11], object.totalPrice);
  writer.writeDouble(offsets[12], object.unitPrice);
}

OrderProduct _orderProductDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OrderProduct(
    bases: reader.readObjectList<SubproductEntity>(
          offsets[0],
          SubproductEntitySchema.deserialize,
          allOffsets,
          SubproductEntity(),
        ) ??
        [],
    businessInfo: reader.readLong(offsets[1]),
    extras: reader.readObjectList<SubproductEntity>(
          offsets[2],
          SubproductEntitySchema.deserialize,
          allOffsets,
          SubproductEntity(),
        ) ??
        [],
    id: reader.readLong(offsets[3]),
    isMenu: reader.readBool(offsets[4]),
    menuProductEntity: reader.readObjectList<MenuProductEntity>(
          offsets[5],
          MenuProductEntitySchema.deserialize,
          allOffsets,
          MenuProductEntity(),
        ) ??
        [],
    optionals: reader.readObjectList<SubproductEntity>(
          offsets[6],
          SubproductEntitySchema.deserialize,
          allOffsets,
          SubproductEntity(),
        ) ??
        [],
    productName: reader.readString(offsets[7]),
    quantity: reader.readLong(offsets[8]),
    rates: reader.readObjectOrNull<PriceEntity>(
          offsets[9],
          PriceEntitySchema.deserialize,
          allOffsets,
        ) ??
        PriceEntity(),
    totalPrice: reader.readDouble(offsets[11]),
    unitPrice: reader.readDouble(offsets[12]),
  );
  return object;
}

P _orderProductDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<SubproductEntity>(
            offset,
            SubproductEntitySchema.deserialize,
            allOffsets,
            SubproductEntity(),
          ) ??
          []) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readObjectList<SubproductEntity>(
            offset,
            SubproductEntitySchema.deserialize,
            allOffsets,
            SubproductEntity(),
          ) ??
          []) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readObjectList<MenuProductEntity>(
            offset,
            MenuProductEntitySchema.deserialize,
            allOffsets,
            MenuProductEntity(),
          ) ??
          []) as P;
    case 6:
      return (reader.readObjectList<SubproductEntity>(
            offset,
            SubproductEntitySchema.deserialize,
            allOffsets,
            SubproductEntity(),
          ) ??
          []) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readObjectOrNull<PriceEntity>(
            offset,
            PriceEntitySchema.deserialize,
            allOffsets,
          ) ??
          PriceEntity()) as P;
    case 10:
      return (reader.readBool(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    case 12:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _orderProductGetId(OrderProduct object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _orderProductGetLinks(OrderProduct object) {
  return [];
}

void _orderProductAttach(
    IsarCollection<dynamic> col, Id id, OrderProduct object) {}

extension OrderProductQueryWhereSort
    on QueryBuilder<OrderProduct, OrderProduct, QWhere> {
  QueryBuilder<OrderProduct, OrderProduct, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OrderProductQueryWhere
    on QueryBuilder<OrderProduct, OrderProduct, QWhereClause> {
  QueryBuilder<OrderProduct, OrderProduct, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension OrderProductQueryFilter
    on QueryBuilder<OrderProduct, OrderProduct, QFilterCondition> {
  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      basesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bases',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      basesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bases',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      basesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bases',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      basesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bases',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      basesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bases',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      basesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bases',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      businessInfoEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'business_info',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      businessInfoGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'business_info',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      businessInfoLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'business_info',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      businessInfoBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'business_info',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      extrasLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'extras',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      extrasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'extras',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      extrasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'extras',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      extrasLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'extras',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      extrasLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'extras',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      extrasLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'extras',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition> isMenuEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMenu',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      menuProductEntityLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'menu_product_entity',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      menuProductEntityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'menu_product_entity',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      menuProductEntityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'menu_product_entity',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      menuProductEntityLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'menu_product_entity',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      menuProductEntityLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'menu_product_entity',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      menuProductEntityLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'menu_product_entity',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      optionalsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionals',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      optionalsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionals',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      optionalsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionals',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      optionalsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionals',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      optionalsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionals',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      optionalsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionals',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      productNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'product_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      productNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'product_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      productNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'product_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      productNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'product_name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      productNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'product_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      productNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'product_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      productNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'product_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      productNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'product_name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      productNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'product_name',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      productNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'product_name',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      quantityEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      quantityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      quantityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      quantityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      stringifyEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      totalPriceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'total_price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      totalPriceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'total_price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      totalPriceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'total_price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      totalPriceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'total_price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      unitPriceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit_price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      unitPriceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unit_price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      unitPriceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unit_price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      unitPriceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unit_price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension OrderProductQueryObject
    on QueryBuilder<OrderProduct, OrderProduct, QFilterCondition> {
  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition> basesElement(
      FilterQuery<SubproductEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'bases');
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition> extrasElement(
      FilterQuery<SubproductEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'extras');
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      menuProductEntityElement(FilterQuery<MenuProductEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'menu_product_entity');
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition>
      optionalsElement(FilterQuery<SubproductEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'optionals');
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterFilterCondition> rates(
      FilterQuery<PriceEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'rates');
    });
  }
}

extension OrderProductQueryLinks
    on QueryBuilder<OrderProduct, OrderProduct, QFilterCondition> {}

extension OrderProductQuerySortBy
    on QueryBuilder<OrderProduct, OrderProduct, QSortBy> {
  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> sortByBusinessInfo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'business_info', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy>
      sortByBusinessInfoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'business_info', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> sortByIsMenu() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMenu', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> sortByIsMenuDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMenu', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> sortByProductName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product_name', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy>
      sortByProductNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product_name', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> sortByTotalPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total_price', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy>
      sortByTotalPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total_price', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> sortByUnitPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit_price', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> sortByUnitPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit_price', Sort.desc);
    });
  }
}

extension OrderProductQuerySortThenBy
    on QueryBuilder<OrderProduct, OrderProduct, QSortThenBy> {
  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenByBusinessInfo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'business_info', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy>
      thenByBusinessInfoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'business_info', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenByIsMenu() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMenu', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenByIsMenuDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMenu', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenByProductName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product_name', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy>
      thenByProductNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product_name', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenByTotalPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total_price', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy>
      thenByTotalPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total_price', Sort.desc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenByUnitPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit_price', Sort.asc);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QAfterSortBy> thenByUnitPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit_price', Sort.desc);
    });
  }
}

extension OrderProductQueryWhereDistinct
    on QueryBuilder<OrderProduct, OrderProduct, QDistinct> {
  QueryBuilder<OrderProduct, OrderProduct, QDistinct> distinctByBusinessInfo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'business_info');
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QDistinct> distinctByIsMenu() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMenu');
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QDistinct> distinctByProductName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'product_name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QDistinct> distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QDistinct> distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QDistinct> distinctByTotalPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'total_price');
    });
  }

  QueryBuilder<OrderProduct, OrderProduct, QDistinct> distinctByUnitPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unit_price');
    });
  }
}

extension OrderProductQueryProperty
    on QueryBuilder<OrderProduct, OrderProduct, QQueryProperty> {
  QueryBuilder<OrderProduct, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<OrderProduct, List<SubproductEntity>, QQueryOperations>
      basesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bases');
    });
  }

  QueryBuilder<OrderProduct, int, QQueryOperations> businessInfoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'business_info');
    });
  }

  QueryBuilder<OrderProduct, List<SubproductEntity>, QQueryOperations>
      extrasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'extras');
    });
  }

  QueryBuilder<OrderProduct, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<OrderProduct, bool, QQueryOperations> isMenuProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMenu');
    });
  }

  QueryBuilder<OrderProduct, List<MenuProductEntity>, QQueryOperations>
      menuProductEntityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'menu_product_entity');
    });
  }

  QueryBuilder<OrderProduct, List<SubproductEntity>, QQueryOperations>
      optionalsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'optionals');
    });
  }

  QueryBuilder<OrderProduct, String, QQueryOperations> productNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'product_name');
    });
  }

  QueryBuilder<OrderProduct, int, QQueryOperations> quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<OrderProduct, PriceEntity, QQueryOperations> ratesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rates');
    });
  }

  QueryBuilder<OrderProduct, bool, QQueryOperations> stringifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringify');
    });
  }

  QueryBuilder<OrderProduct, double, QQueryOperations> totalPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'total_price');
    });
  }

  QueryBuilder<OrderProduct, double, QQueryOperations> unitPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unit_price');
    });
  }
}
