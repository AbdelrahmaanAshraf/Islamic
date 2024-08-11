import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/widgets/islamic_mosque_widget.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Opacity(
            opacity: .2,
            child: Image.asset(
              'assets/images/seb7a background.png',
              fit: BoxFit.cover,
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const IslamicMosqueWidget(),
            SizedBox(
              height: 15.h,
            ),
            Text(
              textAlign: TextAlign.center,
              'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 70.h,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                PositionedDirectional(
                  top: -60.h,
                  start: 170.w,
                  child: Image.asset('assets/images/head of seb7a.png'),
                ),
                Image.asset(
                  'assets/images/Seb7a.png',
                  fit: BoxFit.contain,
                ),
                PositionedDirectional(
                  bottom: 100.h,
                  start: 100.w,
                  child: Column(children: [
                    Text(
                      'سبحان الله',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      '30',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ]),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
