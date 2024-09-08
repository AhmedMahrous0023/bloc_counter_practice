import 'package:bloc_counter/logic%20business/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatingButtonWidget extends StatelessWidget {
  const FloatingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(IncreamentEvent());
          },
          child: Icon(Icons.add),
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(ResetEvent());
          },
          child: Icon(Icons.exposure_zero),
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            if(context.read<CounterBloc>().counter>0){
            context.read<CounterBloc>().add(DecreamentEvent());

            }
          },
          child: Icon(Icons.remove),
        )
      ],
    );
  }
}
