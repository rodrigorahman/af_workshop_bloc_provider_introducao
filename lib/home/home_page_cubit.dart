import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';
import 'package:bloc_provider_introducao/home/cubit/counter_state.dart';

class HomePageCubit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return Text('Contador: ${state.value}');
                },
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<CounterCubit>().adicionar();
                },
                child: Text('Adicionar'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterCubit>().subtrair();
                },
                child: Text('Subtrair'),
              )
            ],
          )
        ],
      ),
    );
  }
}
