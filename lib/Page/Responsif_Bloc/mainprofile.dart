import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/Page/LoginPage/inputlogin/auth/auth.dart';
import 'package:mynotes/Page/Responsif_Bloc/Responsivelandscape/desktoplandscape.dart';
import 'package:mynotes/Page/Responsif_Bloc/Responsivelandscape/bodylandscape.dart';

import 'Responsivecounter/desktop_body.dart';
import 'Responsivecounter/mobile_body.dart';
import 'Responsivecounter/responsive_layout.dart';



class MainProfilelandscape extends StatelessWidget {
  final User? user = Auth().currentUser;

  MainProfilelandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(color: Colors.black),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ResponsiveLayout(
              mobileBody: Body(),
              desktopBody: bodyLandscape(),
            ),
          ],
        ),
      ),
    );
  }
}
