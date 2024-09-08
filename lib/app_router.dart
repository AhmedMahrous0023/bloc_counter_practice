
import 'package:bloc_counter/presentaion/screens/counter_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {

  Route? generateRouting(RouteSettings settings){
    switch(settings.name){
      case '/':
      return MaterialPageRoute(builder: ( (context) => CounterScreen()));
    }
    return null ;
  }
}