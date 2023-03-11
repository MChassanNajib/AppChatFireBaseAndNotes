import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
           child: Image(
           width: 200,
             height: 200,
             image: AssetImage("assets/images/project - logo.png"),
             // repeat: ImageRepeat.repeat,
           ),
          ),
    );
  }
}
