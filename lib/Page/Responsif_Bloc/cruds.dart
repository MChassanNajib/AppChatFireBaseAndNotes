import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mynotes/Page/Responsif_Bloc/Responsivecrud/desktop_body.dart';
import 'package:mynotes/Page/Responsif_Bloc/Responsivecrud/mobile_body.dart';
import 'Responsivecounter/desktop_body.dart';
import 'Responsivecounter/mobile_body.dart';
import 'Responsivecounter/responsive_layout.dart';


class crudresponsive extends StatefulWidget {
  const crudresponsive({super.key});

  @override
  State<crudresponsive> createState() => _crudresponsiveState();
}

class _crudresponsiveState extends State<crudresponsive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: mycrudmobile(),
        desktopBody: mycruddesktop(),
      ),
    );
  }
}