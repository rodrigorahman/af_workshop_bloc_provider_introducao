part of 'counter_bloc.dart';

class CounterState {
  int value;
  CounterState(this.value);

  CounterState copyWith({
    int? value,
  }) {
    return CounterState(
      value ?? this.value,
    );
  }
}
