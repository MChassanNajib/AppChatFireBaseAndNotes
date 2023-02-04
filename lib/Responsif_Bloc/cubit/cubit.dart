import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynotes/Responsif_Bloc/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  int counter = 0;

  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) =>
      BlocProvider.of(context);

  void minus() {
    counter--;
    emit(CounterMinusState(counter: counter));
  }
  // void kali() {
  //   counter * 2;
  //   emit(CounterMinusState(counter: counter));
  // }
  void bagi() {
    counter = (counter/2) as int;
    emit(CounterMinusState(counter: counter));
  }
  void kali() {
    counter *= 2;
    emit(CounterMinusState(counter: counter));
  }
  // void bagi() {
  //   counter/2;
  //   emit(CounterMinusState(counter: counter));
  // }
 // void bagi() {
 //    emit(CounterMinusState(counter: counter / 1));
 //  }


  void plus() {
    counter++;
    emit(CounterPlusState(counter: counter));
  }
}