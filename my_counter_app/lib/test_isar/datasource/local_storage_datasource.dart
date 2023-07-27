import '../model/order_product.dart';

abstract class LocalStorageDatasource {
  Future<void> addOrder({required OrderProduct orderProduct});
  Future<OrderProduct> getOrder({required int id});
  Future<List<OrderProduct>> getOrders();
  Future<void> deleteOrder({required OrderProduct orderProduct});
  Future<OrderProduct> putOrder({required OrderProduct orderProduct});
  Future<bool> compareOrder({required OrderProduct orderProduct});
}
