import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/view/widget/islamic_text.dart';

class IslamicMosqueWidget extends StatelessWidget {
  const IslamicMosqueWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset('assets/images/Mosque-01 1.png'),
          Positioned(
              left: 45.w,
              top: 55.h,
              child: const IslamicText())
        ],
      ),
    );
  }
}
