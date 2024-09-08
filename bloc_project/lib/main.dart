import 'package:bloc_project/bloc/counter_bloc.dart';
import 'package:bloc_project/cubit/counter_cubit.dart';
import 'package:bloc_project/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterCubit()),
        BlocProvider(create: (_) => CounterBloc()),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
