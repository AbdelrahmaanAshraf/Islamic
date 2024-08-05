import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/model/helper/const.dart';

class ViewDataRowDesign extends StatelessWidget {
  const ViewDataRowDesign({
    super.key, required this.tilte,
  });
  final String tilte ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/Mask group.png'),
        Text(
          tilte,
          style: customTextStyle(color: kPrimaryColor, size: 24.sp),
        ),
        Image.asset('assets/images/Mask group2.png'),
      ],
    );
  }
}
