import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/model/hadith_model.dart';
import 'package:islamic/model/helper/const.dart';
import 'package:islamic/view/widget/quran_widgets/view_data_row_design.dart';

class HadithWidget extends StatelessWidget {
  const HadithWidget({
    super.key, required this.items,
  });
final Items items;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      margin: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        image: bottomMosqueImage(),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          PositionedDirectional(
            start: 40.w,
            top: 50.h,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                'assets/images/HadithCardBackGround.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                 ViewDataRowDesign(
                  tilte: 'الحد يث ${items.number.toString()}',
                  leftImage: 'assets/images/Cornerr 2.png',
                  rightImage: 'assets/images/Cornerr 1.png',
                  textColor: Colors.black,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  width: 270.w,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    items.arab ?? '',
                    style: customTextStyle(
                        size: 16.sp, color: Colors.black, weight: FontWeight.w700),
                    softWrap: true,
                    textDirection: TextDirection.rtl,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
