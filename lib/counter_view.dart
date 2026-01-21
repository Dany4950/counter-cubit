import 'package:counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});
  //logic , state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
            child: Text(
              state.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: ValueKey("increment_key"),
            onPressed: () {
              context.read<CounterCubit>().onIncrement();
            },
            child: Text("+"),
          ),
          Gap(20),
          FloatingActionButton(
            key: ValueKey("decrement_key"),
            onPressed: () {
              context.read<CounterCubit>().onDecrement();
            },
            child: Text("-"),
          ),
        ],
      ),
    );
  }
}
