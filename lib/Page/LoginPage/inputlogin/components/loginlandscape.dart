import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class Logolandscape extends StatefulWidget {
  const Logolandscape({super.key});

  @override
  State<Logolandscape> createState() => _LogolandscapeState();
}

class _LogolandscapeState extends State<Logolandscape> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Image(
          width: 140,
          height: 140,
          image: AssetImage("assets/images/project - logo.png"),
          // repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }
}
