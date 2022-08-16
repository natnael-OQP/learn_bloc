import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/logic/cubit/counter_cubit.dart';
import 'package:learn_bloc/presentation/screens/home_screen.dart';
import 'package:learn_bloc/presentation/screens/second_screen.dart';
import 'package:learn_bloc/presentation/screens/third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CounterCubit _counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => BlocProvider(
              create: (context) => _counterCubit,
              child: const HomeScreen(title: 'bloc', color: Colors.blue),
            ),
        '/second': (context) => BlocProvider(
              create: (context) => _counterCubit,
              child:
                  const SecondScreen(title: "Second", color: Colors.redAccent),
            ),
        '/third': (context) => BlocProvider(
              create: (context) => _counterCubit,
              child:
                  const ThirdScreen(title: "third", color: Colors.amberAccent),
            ),
      },
    );
  }
}
