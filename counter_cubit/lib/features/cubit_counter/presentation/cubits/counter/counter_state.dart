// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int counter;

  const CounterState({
    required this.counter,
  });

  factory CounterState.initial() => const CounterState(counter: 0);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [counter];

  CounterState copyWith({
    int? counter,
  }) =>
      CounterState(counter: counter ?? this.counter);
}
