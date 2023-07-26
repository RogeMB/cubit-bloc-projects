import '../model/order_product.dart';

abstract class LocalStorageDatasource {
  Future<void> addOrder({required OrderProduct orderProduct});
  Future<OrderProduct> getOrder({required int id});
  Future<List<OrderProduct>> getOrders();
  Future<void> deleteOrder({required int id});
  Future<OrderProduct> putOrder({required OrderProduct orderProduct});
}
