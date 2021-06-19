import 'package:bloc/bloc.dart';
import 'package:bloc_provider_introducao/home/cubit/counter_state.dart';


class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(0));


  void adicionar(){
    emit(state.copyWith(value: ++state.value));
  }

  void subtrair(){
    emit(state.copyWith(value: --state.value));
  }

}
