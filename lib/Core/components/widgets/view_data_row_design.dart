import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/helper/const.dart';

class ViewDataRowDesign extends StatelessWidget {
  const ViewDataRowDesign({
    super.key, required this.tilte, required this.leftImage, required this.rightImage, required this.textColor,
  });
  final String tilte , leftImage ,rightImage;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(leftImage),
        Text(
          textDirection: TextDirection.rtl,
          tilte,
          style: customTextStyle(color: textColor, size: 24.sp,weight: FontWeight.bold),
        ),
        Image.asset(rightImage),
      ],
    );
  }
}
