import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/model/helper/const.dart';
import 'package:islamic/model/recently_quran_model.dart';

class MostRecentlyCardWidget extends StatelessWidget {
  const MostRecentlyCardWidget({super.key,});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8.h),
      padding: EdgeInsets.all(12.sp),
      height: 150.h,
      width: 275.w,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Al-Anbiya',
                  style: customTextStyle(
                      size: 24.sp,
                      color: Colors.black,
                      weight: FontWeight.bold),
                ),
                Text(
                  'الأنبياء',
                  style: customTextStyle(
                      size: 24.sp,
                      color: Colors.black,
                      weight: FontWeight.bold),
                ),
                Text(
                  '1 Verses',
                  style: customTextStyle(size: 14.sp, color: Colors.black),
                ),
              ],
            ),
          ),
          Expanded(child: Image.asset('assets/images/quranSura.png'))
        ],
      ),
    );
  }
}
