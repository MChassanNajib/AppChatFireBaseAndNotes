import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mynotes/responsive/desktop_body.dart';
import 'package:mynotes/responsive/mobile_body.dart';
import 'package:mynotes/responsive/responsive_layout.dart';

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