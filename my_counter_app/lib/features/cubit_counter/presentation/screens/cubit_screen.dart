import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_counter_app/test_isar/datasource_impl/isar_datasource_impl.dart';
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
    Tarifa tarifa1 = Tarifa(name: 'Tarifa 1', price: 20);
    Tarifa tarifa2 = Tarifa(name: 'Tarifa 2', price: 30);
    if (kDebugMode) {
      print(tarifa2);
    }

    Subproduct subproduct1 = Subproduct(name: 'Subproduct 1', price: 2);
    Subproduct subproduct2 = Subproduct(name: 'Subproduct 2', price: 3);
    Subproduct subproduct3 = Subproduct(name: 'Subproduct 3', price: 4);

    OrderProduct orderProduct = OrderProduct(
      id: 2,
      name: 'PedidoUno',
      basse: tarifa1,
      mainOptional: subproduct1,
      optionals: subproduct2,
      extra: subproduct3,
      quantity: 3,
      unitPrice: 29,
      finalPrice: 87,
    );

    OrderProduct orderProduct2 = OrderProduct(
      id: 2,
      name: 'PedidoUno',
      basse: tarifa1,
      mainOptional: subproduct1,
      optionals: subproduct2,
      extra: subproduct3,
      quantity: 1,
      unitPrice: 29,
      finalPrice: 29,
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
              IsarDatasource().addOrder(orderProduct: orderProduct2);
            },
            heroTag: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 5.0),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).reset();
              IsarDatasource().deleteOrder(id: orderProduct.id!);
            },
            heroTag: 'Reset',
            child: const Text('CE'),
          ),
          const SizedBox(height: 5.0),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).decrement();
              IsarDatasource().getOrder(id: orderProduct2.id!);
            },
            heroTag: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
