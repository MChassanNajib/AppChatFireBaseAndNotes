import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mynotes/Page/HomePage/home.dart';
import 'package:mynotes/Page/LoginPage/inputlogin/auth/auth.dart';
import 'package:mynotes/Page/Screen/IntroApp/introapp.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => StreamBuilder(
              stream: Auth().authStateChanges,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return HomePage();
                } else {
                  return OnBoardingPage();
                }
              },
            ),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: const Center(
            child: Image(
              width: 320,
              height: 320,
              image: AssetImage("assets/images/project - project - logo.png"),
              // repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
