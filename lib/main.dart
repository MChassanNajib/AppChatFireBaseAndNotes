// ignore_for_file: prefer_const_constructors
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'Responsif_Bloc/notes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: notes(),
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:responsif_notes/screen/counter_screen.dart';

// void main() {

//   runApp( MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:CounterBloc(),
//     );
//   }
// }