import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:my_counter_app/test_isar/datasource/local_storage_datasource.dart';
import 'package:my_counter_app/test_isar/model/order_product.dart';
import 'package:path_provider/path_provider.dart';

class IsarDatasource extends LocalStorageDatasource {
  late Future<Isar> db;

  IsarDatasource() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [OrderProductSchema],
        directory: dir.path,
        inspector: true,
      );
    }
    return Future.value(Isar.getInstance());
  }

  @override
  Future<OrderProduct?> getOrder({required String uuid}) async {
    final isar = await db;
    final OrderProduct? order =
        await isar.orderProducts.filter().uuidEqualTo(uuid).findFirst();
    if (order == null) {
      return null;
    }
    return order;
  }

  @override
  Future<List<OrderProduct>> getOrders() async {
    final isar = await db;
    final List<OrderProduct> orderProducts =
        await isar.orderProducts.where().findAll();
    return orderProducts;
  }

  @override
  Future<void> addOrPutOrder({required OrderProduct orderProduct}) async {
    final isar = await db;

    if (orderProduct.quantity != 0) {
      await isar.writeTxn(() => isar.orderProducts.put(orderProduct));
    } else {
      deleteOrder(orderProduct: orderProduct);
    }
  }

  @override
  Future<bool> compareOrder({required OrderProduct orderProduct}) async {
    final isar = await db;
    final orderProducts = await isar.orderProducts.where().findAll();
    return orderProducts
        .any((orderProductIter) => orderProductIter == orderProduct);
  }

  @override
  Future<void> deleteOrder({required OrderProduct orderProduct}) async {
    final isar = await db;
    await isar
        .writeTxn(() => isar.orderProducts.deleteByUuid(orderProduct.uuid));
  }

  //*  @override
  // Future<bool> compareOrder({required OrderProduct orderProduct}) async {
  //   final isar = await db;
  //   final orderProducts = await isar.orderProducts.where().findAll();
  //   bool result = false;
  //   for (final orderProductIter in orderProducts) {
  //     if (orderProductIter == orderProduct) result = true;
  //     if (kDebugMode) {
  //       print(result);
  //     }
  //     break;
  //   }

  //   // return orderProducts
  //   //     .any((orderProductIter) => orderProductIter == orderProduct);
  //   return result;
  // }
}
