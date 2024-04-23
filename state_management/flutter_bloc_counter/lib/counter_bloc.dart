import 'package:bloc/bloc.dart';

// Events
abstract class CounterEvent {}
class IncrementCounter extends CounterEvent {}
class DecrementCounter extends CounterEvent {}

// State
class CounterState {
  final int count;
  CounterState(this.count);
}

// Bloc
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<IncrementCounter>((event, emit) => emit(CounterState(state.count + 1)));
    on<DecrementCounter>((event, emit) => emit(CounterState(state.count - 1)));
  }
}
