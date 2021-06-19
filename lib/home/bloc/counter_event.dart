part of 'counter_bloc.dart';


abstract class CounterEvent {}

class CounterEventAdd extends CounterEvent {}
class CounterEventSubtract extends CounterEvent {}