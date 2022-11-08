import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<OnSetCounterEvent>(
          (event, emit) => emit(state.copyWith(counter: state.counter + 2)),
    );
  }
}
