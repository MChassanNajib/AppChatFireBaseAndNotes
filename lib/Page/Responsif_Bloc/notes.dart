import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mynotes/Page/Responsif_Bloc/Responsivecounter/desktop_body.dart';
import 'package:mynotes/Page/Responsif_Bloc/Responsivecounter/mobile_body.dart';
import 'package:mynotes/Page/Responsif_Bloc/Responsivecounter/responsive_layout.dart';

class notes extends StatefulWidget {
  const notes({Key? key}) : super(key: key);

  @override
  _notesState createState() => _notesState();
}

class _notesState extends State<notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}