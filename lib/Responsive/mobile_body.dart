import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xff0E121A);
    Color secondColor = Color(0xffE5FFE6);
    Color trithColor = Color(0xffD9D9D9);
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (BuildContext context, CounterStates state) {
          if (state is CounterPlusState) {
            //print('plus state ${state.counter}');
          }
          if (state is CounterMinusState) {
            //print('minus state ${state.counter}');
          }
        },
        builder: (BuildContext context, CounterStates state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: mainColor,
              title: const Text(
                "Counter BloC phone",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();
                    },
                    child: const Text(
                      "PLUS",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      "${CounterCubit.get(context).counter}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).minus();
                    },
                    child: const Text(
                      "MINUS",
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
