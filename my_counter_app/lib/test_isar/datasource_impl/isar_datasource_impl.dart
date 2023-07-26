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
    if (orderProduct != null) {
      await isar.writeTxn(() => isar.orderProducts.put(orderProduct));
    } else {
      throw Exception('Order product is undefined');
    }
  }

  @override
  Future<void> deleteOrder({required int id}) async {
    final isar = await db;
    late final OrderProduct? order;
    if (id != null) {
      throw ArgumentError.notNull('id');
    } else {
      order = await isar.orderProducts.filter().idEqualTo(id).findFirst();
    }

    (order != null)
        ? isar.writeTxnSync(() => isar.orderProducts.deleteSync(order?.id ?? 0))
        : throw Exception('Order not found');
  }

  @override
  Future<OrderProduct> getOrder({required int id}) async {
    final isar = await db;
    late final OrderProduct? order;
    if (id != null) {
      throw ArgumentError.notNull('id');
    } else {
      order = await isar.orderProducts.filter().idEqualTo(id).findFirst();
    }
    (order == null) ? throw Exception('Order not found') : order;
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
  Future<OrderProduct> putOrder({required OrderProduct orderProduct}) {
    throw UnimplementedError();
  }
}
