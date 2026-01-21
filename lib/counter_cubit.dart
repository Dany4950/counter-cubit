import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(super.initialState);

  void onIncrement() {
    emit(state + 1);
  }

  void onDecrement() {
    emit(state - 1);
  }
}
