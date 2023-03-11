import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/Materials/Colors/constant.dart';


class Userid extends StatelessWidget {
  const Userid({
    Key? key,
  }) : super(key: key);
  //Mengantur Gambar Profile
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CachedNetworkImage(
            imageUrl: FirebaseAuth.instance.currentUser!.photoURL ??
                "https://www.citypng.com/public/uploads/preview/transparent-hd-white-male-user-profile-icon-11637133256qticy7lqml.png",
            imageBuilder: (context, imageProvider) => CircleAvatar(
              backgroundColor: whiteColor,
              backgroundImage: imageProvider,
              radius: 80,
            ),
            placeholder: ((context, url) => const SizedBox(
                  child: Center(
                    child: CircularProgressIndicator(
                      color: secondary,
                    ),
                  ),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            FirebaseAuth.instance.currentUser!.email ?? "chassannajib@gmail.com",
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
