import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/helper/const.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({super.key, required this.icon, required this.searchHint});
  final IconData icon ;
  final String searchHint ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          prefixIcon: Icon(icon as IconData?,color: kPrimaryColor,),
          hintText: searchHint,
          enabledBorder: textFieldBorderDesign(),
          focusedBorder: textFieldBorderDesign()
        ),
      ),
    );
  }
}