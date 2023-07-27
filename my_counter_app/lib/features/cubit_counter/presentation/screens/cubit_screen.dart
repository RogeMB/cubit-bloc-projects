import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_counter_app/test_isar/datasource_impl/isar_datasource_impl.dart';
import 'package:my_counter_app/test_isar/model/menu_product_entity.dart';
import 'package:my_counter_app/test_isar/model/order_product.dart';
import 'package:my_counter_app/test_isar/model/subproduct_entity.dart';
import 'package:my_counter_app/test_isar/model/price_entity.dart';

import '../cubits/counter/counter_cubit.dart';

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (_) => CounterCubit(),
      child: const _CubitCounterView(),
    );
  }
}

class _CubitCounterView extends StatelessWidget {
  const _CubitCounterView();

  @override
  Widget build(BuildContext context) {
    final PriceEntity tarifa1 = PriceEntity(name: 'Tarifa 1', price: 20);
    final PriceEntity tarifa2 = PriceEntity(name: 'Tarifa 2', price: 30);
    if (kDebugMode) {
      print(tarifa2);
    }

    final SubproductEntity subproduct1 =
        SubproductEntity(name: 'Subproduct 1', price: 2);
    final SubproductEntity subproduct2 =
        SubproductEntity(name: 'Subproduct 2', price: 3);
    final SubproductEntity subproduct3 =
        SubproductEntity(name: 'Subproduct 3', price: 4);

    List<SubproductEntity> subproducts1 = [
      subproduct1,
      subproduct2,
    ];
    List<SubproductEntity> subproducts2 = [
      subproduct2,
      subproduct3,
    ];
    List<SubproductEntity> subproducts3 = [
      subproduct3,
      subproduct1,
    ];

    final MenuProductEntity menu1 =
        MenuProductEntity(plateName: "Plato1", plateNumber: "Primer plato");
    final MenuProductEntity menu2 =
        MenuProductEntity(plateName: "Plato1", plateNumber: "Primer plato");
    List<MenuProductEntity> menuList = [menu1, menu2];

    OrderProduct orderProduct = OrderProduct(
      id: 1,
      productName: 'PedidoUno',
      rates: tarifa1,
      bases: subproducts1,
      optionals: subproducts3,
      extras: subproducts2,
      quantity: 3,
      businessInfo: 2332,
      isMenu: false,
      menuProductEntity: menuList,
      unitPrice: 29,
      totalPrice: 87,
    );

    OrderProduct orderProduct2 = OrderProduct(
      id: 1,
      productName: 'PedidoUno',
      rates: tarifa1,
      bases: subproducts1,
      optionals: subproducts3,
      extras: subproducts2,
      quantity: 6,
      businessInfo: 2332,
      isMenu: false,
      menuProductEntity: menuList,
      unitPrice: 29,
      totalPrice: 87,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit Mini-Calculator'),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Center(
            child: Text(
              //! listen true for listen the state of the cubit
              'Result: ${state.counter}',
              style: const TextStyle(fontSize: 36.0),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).increment();
              IsarDatasource().addOrder(orderProduct: orderProduct);
            },
            heroTag: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 5.0),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).reset();
              IsarDatasource().deleteOrder(orderProduct: orderProduct);
            },
            heroTag: 'Reset',
            child: const Text('CE'),
          ),
          const SizedBox(height: 5.0),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).decrement();

              OrderProduct orderProduct =
                  IsarDatasource().getOrder(id: orderProduct.isarId);
              IsarDatasource().addOrder(orderProduct: orderProduct2);
            },
            heroTag: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
