import 'package:flutter/material.dart';
import 'package:mynotes/Page/LoginPage/inputlogin/auth/auth.dart';
import 'package:mynotes/Page/LoginPage/inputlogin/components/MethodLogin.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:mynotes/Page/Tabbar/Tab.dart';

class Inputlogin extends StatefulWidget {
  const Inputlogin({Key? key}) : super(key: key);

  @override
  State<Inputlogin> createState() => _InputloginState();
}

class _InputloginState extends State<Inputlogin> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const TabBarDemo();
        } else {
          return const MethodLogin();
        }
      },
    );
  }
}
