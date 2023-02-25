import 'package:flutter/material.dart';
import 'package:mynotes/Materials/Colors/constant.dart';
import 'package:mynotes/Page/CRUD/crud.dart';
import 'package:mynotes/Page/LoginPage/profile/mainprofile.dart';
import 'package:mynotes/Page/Responsif_Bloc/cruds.dart';
import 'package:mynotes/Page/Responsif_Bloc/notes.dart';
import 'package:mynotes/Page/Responsif_Bloc/mainprofile.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: secondary,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.numbers)),
                Tab(icon: Icon(Icons.emoji_people)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              //ilham
              notes(),
              //crud ahmad
              crudresponsive(),
              //profile
              MainProfilelandscape()
            ],
          ),
        ),
      ),
    );
  }
}