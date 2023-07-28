import '../model/order_product.dart';

abstract class LocalStorageDatasource {
  Future<OrderProduct?> getOrder({required String uuid});
  Future<List<OrderProduct>> getOrders();
  Future<void> addOrPutOrder({required OrderProduct orderProduct});
  Future<void> deleteOrder({required OrderProduct orderProduct});
  Future<bool> compareOrder({required OrderProduct orderProduct});
}
