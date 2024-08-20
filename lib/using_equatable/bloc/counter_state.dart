part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {}

class CounterUpdate extends CounterState {
  final int count;

  const CounterUpdate({required this.count});

  @override
  List<Object> get props => [count];
}
