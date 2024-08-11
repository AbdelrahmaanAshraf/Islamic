import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/helper/const.dart';

class IslamicText extends StatelessWidget {
  const IslamicText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Islamic',
      style: TextStyle(
          fontSize: 70.sp,
          color: kPrimaryColor,
          fontFamily: 'Kamali'),
    );
  }
}
