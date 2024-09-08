import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0); // initial state is 0

  // emit is a method provided by Cubit which is protected and can only be accessed by the class that extends Cubit
  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}