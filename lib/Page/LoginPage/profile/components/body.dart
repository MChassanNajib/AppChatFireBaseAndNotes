import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/Page/Chat/homepage.dart';
import 'package:mynotes/Page/LoginPage/inputlogin/auth/auth.dart';
import 'package:mynotes/Page/LoginPage/profile/components/ProfileMenu.dart';
import 'package:mynotes/Page/LoginPage/profile/components/userid.dart';

class Body extends StatelessWidget {
  final User? user = Auth().currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Userid(),
          ProfileMenu(
              text: "Chat",
              icon: "assets/icons/chatfirebae.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              }
          ),
          ProfileMenu(
            text: "Logout",
            icon: "assets/icons/logout.svg",
            press: signOut,
          ),
        ],
      ),
    );
  }

  Future<void> signOut() async {
    await Auth().signOut();
  }
}