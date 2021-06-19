import 'package:bloc_provider_introducao/home/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
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
              child: BlocBuilder<CounterBloc, CounterState>(
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
                  context.read<CounterBloc>().add(CounterEventAdd());
                },
                child: Text('Adicionar'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterEventSubtract());
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
