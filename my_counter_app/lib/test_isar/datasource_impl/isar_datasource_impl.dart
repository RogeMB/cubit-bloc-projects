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
  Future<void> addOrder({required OrderProduct orderProduct}) async {
    final isar = await db;
    final bool result = await compareOrder(orderProduct: orderProduct);

    // final updatedProduct = orderProduct.copyWith(
    //   quantity: orderProduct.quantity + orderProduct.quantity,
    // );
    //* orderProduct = orderProduct.copyWith(
    //     quantity: orderProduct.quantity + orderProduct.quantity);
    // existingProduct.quantity = updatedProduct.quantity;
    //await isar.orderProducts.put(updatedProduct);

    final existingProduct = await isar.orderProducts.get(orderProduct.isarId);
    if (existingProduct == null) {
      await isar.writeTxn(() => isar.orderProducts.put(orderProduct));
    } else {
      if (existingProduct.quantity != 0) {
        await isar.writeTxn(() => isar.orderProducts.put(existingProduct));
      } else {
        await isar
            .writeTxn(() => isar.orderProducts.delete(existingProduct.isarId));
      }
    }
  }

  //   @override
  // Future<void> addOrder({required OrderProduct orderProduct}) async {
  //   final isar = await db;
  //   final bool result = await compareOrder(orderProduct: orderProduct);

  //   if (!result) {
  //     await isar.writeTxn(() => isar.orderProducts.put(orderProduct));
  //   } else {
  //     try {
  //       final existingProduct = await getOrder(id: orderProduct.id);
  //       final updatedProduct = existingProduct.copyWith(
  //         quantity: orderProduct.quantity + existingProduct.quantity,
  //       );
  //       // existingProduct.quantity = updatedProduct.quantity;
  //       //await isar.orderProducts.put(updatedProduct);
  //       await isar.writeTxn(() => isar.orderProducts.put(updatedProduct));
  //     } on Exception {
  //       throw Exception('Order already exists');
  //     } catch (e) {
  //       rethrow;
  //     }
  //   }
  // }

  @override
  Future<void> deleteOrder({required OrderProduct orderProduct}) async {
    final isar = await db;
    final bool result = await compareOrder(orderProduct: orderProduct);

    if (!result) {
      await isar.writeTxn(() => isar.orderProducts.put(orderProduct));
    } else {
      try {
        final existingProduct = await getOrder(id: orderProduct.id);
        final updatedProduct = existingProduct.copyWith(
          quantity: existingProduct.quantity - orderProduct.quantity,
        );
        (updatedProduct.quantity != 0)
            ? await isar.writeTxn(() => isar.orderProducts.put(updatedProduct))
            : isar.writeTxn(() => isar.orderProducts.delete(updatedProduct.id));
      } on Exception {
        throw Exception('Order already exists');
      } catch (e) {
        rethrow;
      }
    }
  }

  // @override
  // Future<void> deleteOrder({required OrderProduct orderProduct}) async {
  //   final isar = await db;
  //   try {
  //     final existingOrder = await getOrder(id: orderProduct.id);
  //     final updatedProduct = existingOrder.copyWith(
  //         quantity: existingOrder.quantity - orderProduct.quantity);
  //     (updatedProduct.quantity != 0)
  //         ? await isar.writeTxn(() => isar.orderProducts.put(updatedProduct))
  //         : isar.writeTxn(() => isar.orderProducts.delete(updatedProduct.id));
  //   } catch (e) {
  //     await isar.writeTxn(() => isar.orderProducts.delete(orderProduct.id));
  //   }
  // }

  @override
  Future<OrderProduct> getOrder({required int id}) async {
    final isar = await db;
    final OrderProduct? order =
        await isar.orderProducts.filter().isarIdEqualTo(id).findFirst();
    if (order == null) {
      throw Exception('Order not found');
    }
    return order;
  }

  @override
  Future<bool> compareOrder({required OrderProduct orderProduct}) async {
    final isar = await db;
    final orderProducts = await isar.orderProducts.where().findAll();
    bool result = false;
    for (final orderProductIter in orderProducts) {
      if (orderProductIter == orderProduct) result = true;
      if (kDebugMode) {
        print(result);
      }
      break;
    }

    // return orderProducts
    //     .any((orderProductIter) => orderProductIter == orderProduct);
    return result;
  }

  @override
  Future<List<OrderProduct>> getOrders() async {
    final isar = await db;
    final List<OrderProduct> orderProducts =
        await isar.orderProducts.where().findAll();
    return orderProducts;
  }

  @override
  Future<OrderProduct> putOrder({required OrderProduct orderProduct}) {
    throw UnimplementedError();
  }
}
