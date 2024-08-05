import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic/model/helper/const.dart';

class SearchSuraWidget extends StatelessWidget {
  const SearchSuraWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          prefixIcon:const Icon(FontAwesomeIcons.bookQuran,color: kPrimaryColor,),
          hintText: 'Sura Name',
          enabledBorder: textFieldBorderDesign(),
          focusedBorder: textFieldBorderDesign()
        ),
      ),
    );
  }
}