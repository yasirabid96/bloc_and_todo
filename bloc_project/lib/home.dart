import 'package:bloc_project/bloc/counter_bloc.dart';
import 'package:bloc_project/cubit/counter_cubit.dart';
import 'package:bloc_project/inc_dec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  final counterCubit = BlocProvider.of<CounterCubit>(context);
      final counterBloc = BlocProvider.of<CounterBloc>(context);

    return  Scaffold(
        appBar: AppBar(
          title: const Text('Simple Counter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pressed the button this many times:',
              ),
              BlocBuilder<CounterBloc,int>(
                // bloc: counterBloc,
                builder: (context, int counter) => Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),),
          
            
            ],
        
          ),
        ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'go',
        onPressed: () =>Navigator.of(context).push(MaterialPageRoute(builder: (context) => const IncDecPage())),
        tooltip: 'go',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
