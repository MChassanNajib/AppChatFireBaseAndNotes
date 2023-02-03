import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mynotes/Materials/Colors/constant.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback? press;

  //membuat Menu profile
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: quaternary,
            padding: const EdgeInsets.all(18),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            primary: secondary.withOpacity(0.8)),
            // backgroundColor: secondary.withOpacity(0.8)),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: Colors.black,
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 20),
            Expanded(
                child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 14, fontWeight: FontWeight.bold, color: kTextColor),
            )),
          ],
        ),
      ),
    );
  }
}
