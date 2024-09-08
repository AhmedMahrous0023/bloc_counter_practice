import 'package:bloc_counter/app_router.dart';
import 'package:bloc_counter/logic%20business/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter =AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child:MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute:_appRouter.generateRouting ,
    ),
    );
  }
}