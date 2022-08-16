import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/logic/cubit/counter_cubit.dart';
import 'package:learn_bloc/presentation/screens/home_screen.dart';
import 'package:learn_bloc/presentation/screens/second_screen.dart';
import 'package:learn_bloc/presentation/screens/third_screen.dart';

class GeneratedRoutes {
  final CounterCubit _counterCubit = CounterCubit();

  Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const HomeScreen(
              title: 'bloc',
              color: Colors.blue,
            ),
          ),
        );
        break;
      case "/second":
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const SecondScreen(
              title: "Second",
              color: Colors.redAccent,
            ),
          ),
        );
        break;
      case "/third":
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const ThirdScreen(title: "third", color: Colors.amberAccent),
          ),
        );
        break;
      default:
        return null;
    }
  }

  void dispose() {
    _counterCubit.close();
  }
}
