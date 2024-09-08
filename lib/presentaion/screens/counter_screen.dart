
import 'package:bloc_counter/logic%20business/bloc/counter_bloc.dart';
import 'package:bloc_counter/presentaion/widgets/floatingbutton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Bloc'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Counter Value is : ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
             BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                 if(state is CounterInitial){
                  return Text('0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),);

                }else if (state is CounterValueChangedState){
                  return Text(state.counter.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),);
                }else{
                  return SizedBox();
                }
                
              },
             )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingButtonWidget()
    );
  }
}