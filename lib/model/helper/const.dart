import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color kPrimaryColor = Color(0xffE2BE7F);

const Color kYellowColor = Color(0xffF6AF58);
const Color kCardColor = Color(0xff5D8082);

textFieldBorderDesign() {
  return OutlineInputBorder(
      borderSide: const BorderSide(color: kPrimaryColor),
      borderRadius: BorderRadius.circular(10.r));
}

customTextStyle({double? size, FontWeight? weight, Color? color}) {
  return TextStyle(fontSize: size, fontWeight: weight, color: color);
}

DecorationImage bottomMosqueImage() {
  return DecorationImage(
      image: Image.asset('assets/images/Mosque-02.png').image,
      alignment: Alignment.bottomCenter,
      opacity: 0.6);
}
