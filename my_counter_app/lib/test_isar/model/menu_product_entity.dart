// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:isar/isar.dart';

part 'menu_product_entity.g.dart';

@embedded
class MenuProductEntity {
  String? plateName;
  String? plateNumber;

  MenuProductEntity({
    this.plateName,
    this.plateNumber,
  });
  //! Falta lista de productos

  @override
  String toString() =>
      'MenuProductEntity(plateName: $plateName, plateNumber: $plateNumber)';

  @override
  bool operator ==(covariant MenuProductEntity other) {
    if (identical(this, other)) return true;

    return other.plateName == plateName && other.plateNumber == plateNumber;
  }

  @override
  int get hashCode => plateName.hashCode ^ plateNumber.hashCode;
}
