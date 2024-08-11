import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/helper/const.dart';
import 'package:islamic/Features/quran_screen/model/quran_model.dart';

class AyahsWidget extends StatelessWidget {
  const AyahsWidget(
      {super.key,required this.ayahs });

  final Ayahs ayahs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      margin: EdgeInsets.symmetric(vertical: 5.h),
      width: double.infinity,
      decoration: BoxDecoration(
          border: const Border(
            left: BorderSide(color: kPrimaryColor),
            right: BorderSide(color: kPrimaryColor),
            top: BorderSide(color: kPrimaryColor),
            bottom: BorderSide(color: kPrimaryColor),
          ),
          borderRadius: BorderRadius.circular(8.r)),
      child: Center(
        child: Text(
          '[${ayahs.numberInSurah.toString()}] ${ayahs.text} ',
          style: customTextStyle(size: 20.sp, color: kPrimaryColor),
          textDirection: TextDirection.rtl,
          softWrap: true,
        ),
      ),
    );
  }
}
