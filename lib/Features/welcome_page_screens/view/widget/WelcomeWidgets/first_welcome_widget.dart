import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/helper/const.dart';
import 'package:islamic/Core/components/widgets/islamic_mosque_widget.dart';


class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget(
      {super.key,
      required this.image,
      required this.firstText,
      required this.secondText,
      required this.lastText});

  final String image, firstText, secondText, lastText;

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const IslamicMosqueWidget(),
        SizedBox(
          height: 30.h,
        ),
        Image.asset(image),
        SizedBox(
          height: 25.h,
        ),
        Text(
          firstText,
          style: customTextStyle(color: kPrimaryColor, size: 24.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w),
          child: Column(
            children: [
              Text(
                secondText,
                style: customTextStyle(color: kPrimaryColor, size: 20.sp),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                lastText,
                style: customTextStyle(color: kPrimaryColor, size: 20.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
//controller.page!.round() == currentPage
