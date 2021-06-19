import 'dart:async';

import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0));

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    switch (event.runtimeType) {
      case CounterEventAdd:
        yield state.copyWith(value: ++state.value);
        break;
      case CounterEventSubtract:
        yield state.copyWith(value: --state.value);
        break;
      default:
    }
  }
}
