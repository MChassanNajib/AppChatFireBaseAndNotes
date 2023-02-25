import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:sizer/sizer.dart';

const Color secondary = Color.fromRGBO(217, 96, 0, 1.0);
// const Color secondary = Color.fromRGBO(9, 165, 153, 1);
const Color tertiary = Color.fromRGBO(246, 236, 114, 1);
const Color quaternary = Color.fromRGBO(250, 250, 250, 1.0);
const Color kBorderColor = Color(0xffE5E5E5);
const Color kTextColor = Color(0xff000000);
const Color whiteColor = Colors.black;
const Color blackColor = Colors.black;
const Color backgroundColor = Color(0xFF000000);

Future<Color> getImagePalette(ImageProvider imageProvider) async {
  final PaletteGenerator paletteGenerator =
  await PaletteGenerator.fromImageProvider(imageProvider);
  return paletteGenerator.vibrantColor!.color;
}
