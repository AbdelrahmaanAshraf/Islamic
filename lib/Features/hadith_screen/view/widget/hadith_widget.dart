import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/helper/const.dart';
import 'package:islamic/Core/components/widgets/view_data_row_design.dart';
import 'package:islamic/Features/hadith_screen/model/hadith_model.dart';
import 'package:islamic/Features/hadith_screen/view/widget/hadith_page_view.dart';

class HadithWidget extends StatelessWidget {
  const HadithWidget({
    super.key,
    required this.items,
  });

  final Items items;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadithPageView.id, arguments: items);
      },
      child: Container(
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
              start: width * 0.08,
              top: height * .07,
              bottom: height * .07,
              end: width * 0.08,
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
                    width: width * .7,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Center(
                      child: Text(
                        items.arab ?? '',
                        style: customTextStyle(
                            size: 16.sp,
                            color: Colors.black,
                            weight: FontWeight.w700),
                        softWrap: true,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
