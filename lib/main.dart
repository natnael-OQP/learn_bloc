import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/routes/generated_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: GeneratedRoutes().generateRoute,
      // -------------------------------------------------------------
      // ------------------------ Name Route -------------------------
      // -------------------------------------------------------------
      // routes: {
      //   '/': (context) => BlocProvider.value(
      //         value: _counterCubit,
      //         child: const HomeScreen(title: 'home', color: Colors.blue),
      //       ),
      //   '/second': (context) => BlocProvider.value(
      //         value: _counterCubit,
      //         child:
      //             const SecondScreen(title: "Second", color: Colors.redAccent),
      //       ),
      //   '/third': (context) => BlocProvider.value(
      //         value: _counterCubit,
      //         child:
      //             const ThirdScreen(title: "third", color: Colors.amberAccent),
      //       ),
      // },//// end
    );
  }
}
