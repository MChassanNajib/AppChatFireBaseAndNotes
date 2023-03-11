import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/Materials/Colors/constant.dart';
import 'package:mynotes/Page/LoginPage/inputlogin/auth/auth.dart';
import 'package:firebase_core/firebase_core.dart';


class LoginGoogle extends StatefulWidget {
  const LoginGoogle({super.key});

  @override
  State<LoginGoogle> createState() => _LoginGoogleState();
}

class _LoginGoogleState extends State<LoginGoogle> {
  Future google() async {
    final Auth auth = Auth();
    try {
      await Future.delayed(const Duration(seconds: 1));
      await Auth().signInWithGoogle();
      const CircularProgressIndicator(
        color: secondary,
      );
    } on FirebaseAuthException {
      setState(() {
        const snackBar = SnackBar(
          duration: Duration(seconds: 2),
          content: Text("Please Fill in Your Email and Password", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        return;
      });
    }
  }

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 56,
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: quaternary, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        onPressed: () {
          setState(() {
            loading = true;
          });
          google();
          Future.delayed(const Duration(seconds: 1));
        },
        child: loading
            ? const Center(
                child: SizedBox(
                height: 28.0,
                width: 28.0,
                child: CircularProgressIndicator(
                  color: quaternary,
                ),
              ))
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage("assets/icons/icons-google.png"),
                    width: 22,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text("Sign in with Google",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500)
                  ),
                ],
              ),
      ),
    );
  }
}
